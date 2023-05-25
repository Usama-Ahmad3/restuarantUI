import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';
import 'package:restuarant/routing/routeName.dart';

class First11a extends StatelessWidget {
  const First11a({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.black),
        backgroundColor: AppColors.lightScaffoldBackground,
        title:
            const Text('Bank Info', style: TextStyle(color: AppColors.black)),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          Container(
              height: height * 0.4,
              width: width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(50)),
              child: Image.network(
                'https://img.freepik.com/free-vector/white-house-few-trees-isolated-white_1284-46831.jpg?size=626&ext=jpg&ga=GA1.1.1366295525.1669358024&semt=ais',
              )),
          SizedBox(
            height: height * 0.03,
          ),
          const Center(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: Text('Currently your name not yet added any bank account'),
          )),
          const Center(child: Text('please add bank account')),
          SizedBox(
            height: height * 0.09,
          ),
          Material(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RouteName.bankInfo);
                },
                child: Container(
                    height: height * 0.057,
                    decoration: BoxDecoration(
                        color: AppColors.buttonColor,
                        borderRadius: BorderRadius.circular(9)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: AppColors.lightSurfaceOrg,
                        ),
                        SizedBox(
                          width: width * 0.02,
                        ),
                        Center(
                          child: Text(
                            'Add Bank',
                            style: const TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
