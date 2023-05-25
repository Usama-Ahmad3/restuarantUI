import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';
import 'package:restuarant/view/restaurantScreen/widgets/walletContainer.dart';

import 'widgets/FoodList.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.keyboard_arrow_left,
          color: AppColors.black,
        ),
        elevation: 0,
        backgroundColor: AppColors.lightSurfaceOrg,
        title: const Text(
          'Wallet',
          style: TextStyle(color: AppColors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
                child: Container(
                  height: height * 0.18,
                  width: width,
                  decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              const Positioned(
                left: 20,
                bottom: 30,
                child: Icon(
                  Icons.account_balance_wallet_outlined,
                  color: AppColors.lightSurfaceOrg,
                  size: 100,
                ),
              ),
              const Positioned(
                left: 125,
                top: 54,
                child: Text(
                  'Wallet Amount',
                  style: TextStyle(color: AppColors.lightSurfaceOrg),
                ),
              ),
              const Positioned(
                bottom: 43,
                left: 120,
                child: Text(
                  '£300.55',
                  style:
                      TextStyle(color: AppColors.lightSurfaceOrg, fontSize: 28),
                ),
              ),
              Positioned(
                right: 25,
                bottom: 75,
                child: Row(
                  children: [
                    const Text(
                      'Withdraw',
                      style: TextStyle(
                          fontSize: 12, color: AppColors.lightSurfaceOrg),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 12,
                      color: AppColors.lightSurfaceOrg,
                    )
                  ],
                ),
              )
            ],
          ),
          Wrap(
            children: [...List.generate(4, (index) => const WalletContainer())],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Expanded(
            child: Container(
              color: AppColors.lightSurfaceOrg,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.0, top: 5),
                            child: Text(
                              'Withdraw History',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 20.0, top: 10),
                                child: Text(
                                  'View All',
                                  style: TextStyle(
                                      color: AppColors.buttonColor,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ...List.generate(5, (index) => const FoodList())
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
