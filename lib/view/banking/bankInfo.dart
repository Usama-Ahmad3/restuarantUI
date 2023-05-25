import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';

import 'widgets/bankInfoRow.dart';
import 'widgets/button.dart';
import 'widgets/textFornField.dart';

class BankInfo extends StatefulWidget {
  const BankInfo({Key? key}) : super(key: key);

  @override
  State<BankInfo> createState() => _BankInfoState();
}

class _BankInfoState extends State<BankInfo> {
  TextEditingController nameController = TextEditingController();
  TextEditingController branchController = TextEditingController();
  TextEditingController holderController = TextEditingController();
  TextEditingController accountController = TextEditingController();
  FocusNode name = FocusNode();
  FocusNode branchF = FocusNode();
  FocusNode holderF = FocusNode();
  FocusNode account = FocusNode();

  String? bankName = 'Bank America';
  String? accountNo = '012545961854085';
  String? branch = 'Dhaka';
  String? holder = 'Emu';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.keyboard_arrow_left,
            size: 30,
          ),
        ),
        iconTheme: const IconThemeData(color: AppColors.black),
        backgroundColor: AppColors.lightSurfaceOrg,
        title: const Text(
          'Bank Info',
          style: TextStyle(color: AppColors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          BankInfoRow(
              bankName1: 'BankName',
              icon: Icons.maps_home_work_rounded,
              bankName2: bankName.toString()),
          BankInfoRow(
            bankName1: 'Branch',
            bankName2: branch.toString(),
            icon: Icons.sim_card,
          ),
          BankInfoRow(
              bankName1: 'Holder Name',
              icon: Icons.person,
              bankName2: holder.toString()),
          BankInfoRow(
              bankName1: 'Account No. ',
              icon: Icons.switch_account,
              bankName2: accountNo.toString()),
          SizedBox(
            height: height * 0.02,
          ),
          Button(
            onTap: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) => CupertinoActionSheet(
                  title: const Text(
                    'Edit Bank Info',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  actions: [
                    CupertinoActionSheetAction(
                      child: TextFieldWidget(
                        current: name,
                        next: branchF,
                        hintText: 'Bank America',
                        controller: nameController,
                        label: 'Bank Name',
                      ),
                      onPressed: () {},
                    ),
                    CupertinoActionSheetAction(
                        onPressed: () {},
                        isDestructiveAction: true,
                        child: TextFieldWidget(
                          current: branchF,
                          next: holderF,
                          label: 'Dhaka',
                          controller: branchController,
                          hintText: 'Branch Name',
                        )),
                    CupertinoActionSheetAction(
                        onPressed: () {},
                        child: TextFieldWidget(
                          current: holderF,
                          next: account,
                          hintText: 'Holder Name',
                          label: 'Emu',
                          controller: holderController,
                        )),
                    CupertinoActionSheetAction(
                        onPressed: () {},
                        child: TextFieldWidget(
                          current: account,
                          next: null,
                          controller: accountController,
                          hintText: '012545961854085',
                          label: 'Account No.',
                        )),
                    Button(
                        onTap: () {
                          setState(() {
                            bankName = nameController.text;
                            branch = branchController.text;
                            accountNo = accountController.text;
                            holder = holderController.text;
                          });
                          Navigator.pop(context);
                        },
                        icon: null,
                        title: 'Update')
                  ],
                ),
              );
            },
            title: 'Edit',
          ),
        ],
      ),
    );
  }
}
