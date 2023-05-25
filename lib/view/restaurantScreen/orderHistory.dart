import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';
import 'package:restuarant/view/restaurantScreen/widgets/listConfirmed.dart';
import 'package:restuarant/view/restaurantScreen/widgets/rowOrderScreen.dart';

import 'widgets/secondRowOrderScreen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => OrderScreenState();
}

class OrderScreenState extends State<OrderScreen> {
  static Color color1 = AppColors.buttonColor;
  static Color color2 = Colors.white;
  static Color color3 = Colors.white;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
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
        title: const Text(
          'Order History',
          style: TextStyle(color: AppColors.black),
        ),
        centerTitle: true,
        backgroundColor: AppColors.lightSurfaceOrg,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.006,
            ),
            const RowOrderScreen(),
            SizedBox(
              height: height * 0.02,
            ),
            const SecondRowOrderScreen(),
            SizedBox(
              height: height * 0.01,
            ),
            ...List.generate(
                10,
                (index) => const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: ListConfirmed(),
                    )),
          ],
        ),
      ),
    );
  }
}
