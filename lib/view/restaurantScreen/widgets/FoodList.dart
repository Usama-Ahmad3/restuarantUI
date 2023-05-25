import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';

class FoodList extends StatelessWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '£145.00',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  const Text(
                    'Transfer to bank name',
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.greyLawLightPrimaryVariant),
                  )
                ],
              ),
              Column(
                children: [
                  const Text(
                    '28-05-2021',
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.greyLawLightPrimaryVariant),
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  const Text(
                    'Succces',
                    style: TextStyle(fontSize: 12, color: Colors.green),
                  )
                ],
              ),
            ],
          ),
        ),
        RotatedBox(
          quarterTurns: 2,
          child: SizedBox(
            width: width * 0.93,
            child: Divider(
              color: AppColors.greyLawLightPrimary,
            ),
          ),
        )
      ],
    );
  }
}
