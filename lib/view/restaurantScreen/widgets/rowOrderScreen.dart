import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';

class RowOrderScreen extends StatelessWidget {
  const RowOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.065,
      margin: const EdgeInsets.symmetric(horizontal: 0.5),
      decoration: BoxDecoration(
          color: AppColors.buttonColor, borderRadius: BorderRadius.circular(9)),
      child: Stack(
        children: [
          const Positioned(
              top: 9,
              left: 25,
              child: Text(
                'Today',
                style: TextStyle(color: AppColors.lightSurfaceOrg),
              )),
          Positioned(
            bottom: 8,
            left: 25,
            child: Row(
              children: [
                const Icon(Icons.calendar_month,
                    size: 14, color: AppColors.lightSurfaceOrg),
                SizedBox(
                  width: width * 0.005,
                ),
                const Text('22',
                    style: TextStyle(color: AppColors.lightSurfaceOrg)),
                SizedBox(
                  width: width * 0.2,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 90,
            child: RotatedBox(
              quarterTurns: 1,
              child: SizedBox(
                width: width * 0.09,
                child: const Divider(
                  color: AppColors.lightSurfaceOrg,
                ),
              ),
            ),
          ),
          const Positioned(
              top: 9,
              left: 150,
              child: Text(
                'Today',
                style: TextStyle(color: AppColors.lightSurfaceOrg),
              )),
          Positioned(
            bottom: 8,
            left: 150,
            child: Row(
              children: [
                const Icon(Icons.calendar_month,
                    size: 14, color: AppColors.lightSurfaceOrg),
                SizedBox(
                  width: width * 0.005,
                ),
                const Text('22',
                    style: TextStyle(color: AppColors.lightSurfaceOrg)),
                SizedBox(
                  width: width * 0.2,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 100,
            child: RotatedBox(
              quarterTurns: 1,
              child: SizedBox(
                width: width * 0.09,
                child: const Divider(
                  color: AppColors.lightSurfaceOrg,
                ),
              ),
            ),
          ),
          const Positioned(
              top: 9,
              right: 30,
              child: Text(
                'Today',
                style: TextStyle(color: AppColors.lightSurfaceOrg),
              )),
          Positioned(
            bottom: 8,
            left: 290,
            child: Row(
              children: [
                const Icon(Icons.calendar_month,
                    size: 14, color: AppColors.lightSurfaceOrg),
                SizedBox(
                  width: width * 0.005,
                ),
                const Text('22',
                    style: TextStyle(color: AppColors.lightSurfaceOrg)),
                SizedBox(
                  width: width * 0.2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
