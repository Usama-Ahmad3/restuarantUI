import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';

class WalletContainer extends StatelessWidget {
  const WalletContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 4),
      child: Container(
        height: height * 0.1,
        width: width * 0.44,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(1, 1))
          ],
          color: AppColors.lightSurfaceOrg,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '£0.00',
              style: TextStyle(
                  color: AppColors.buttonColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            const Text(
              'Pending Withdraw',
              style: TextStyle(color: Colors.black26),
            )
          ],
        ),
      ),
    );
  }
}
