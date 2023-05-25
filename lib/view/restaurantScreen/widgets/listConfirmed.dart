import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';

class ListConfirmed extends StatelessWidget {
  const ListConfirmed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: height * 0.07,
          width: width * 0.65,
          decoration: const BoxDecoration(
            color: AppColors.lightScaffoldBackground,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                child: Text(
                  'Order ID : #2CE5DW',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: height * 0.002,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: Row(
                  children: [
                    const Text(
                      '25 May 2021 : 11:22AM',
                      style: TextStyle(
                          fontSize: 11,
                          color: AppColors.greyLawLightPrimaryVariant),
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    const Text(
                      'Take Away',
                      style:
                          TextStyle(fontSize: 11, color: AppColors.buttonColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: width * 0.3,
          height: height * 0.04,
          decoration: BoxDecoration(
              color: AppColors.buttonColor,
              borderRadius: BorderRadius.circular(5)),
          child: const Center(
            child: Text(
              'Confirmed',
              style: TextStyle(color: AppColors.lightSurfaceOrg),
            ),
          ),
        ),
      ],
    );
  }
}
