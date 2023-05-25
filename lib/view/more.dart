import 'package:flutter/material.dart';
import 'package:restuarant/routing/routeName.dart';

import 'banking/widgets/button.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Button(
              onTap: () {
                Navigator.pushNamed(context, RouteName.restaurantSettings);
              },
              title: 'Restaurant Setting',
            ),
            Button(
                onTap: () {
                  Navigator.pushNamed(context, RouteName.addNewFood);
                },
                title: 'Add Food'),
            Button(
                onTap: () {
                  Navigator.pushNamed(context, RouteName.walletScreen);
                },
                title: 'Wallet Screen')
          ],
        ),
      ),
    );
  }
}
