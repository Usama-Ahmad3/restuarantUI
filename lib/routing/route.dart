import 'package:flutter/material.dart';
import 'package:restuarant/mainScreen.dart';
import 'package:restuarant/view/addNewFood/addNewFood.dart';
import 'package:restuarant/view/banking/bankInfo.dart';
import 'package:restuarant/view/banking/first.dart';
import 'package:restuarant/view/restaurantScreen/foodsScreen.dart';
import 'package:restuarant/view/restaurantScreen/orderHistory.dart';
import 'package:restuarant/view/restaurantScreen/waletcreen.dart';
import 'package:restuarant/view/restuarantSettings/restuarantSettings.dart';

import 'routeName.dart';

class Routes {
  static MaterialPageRoute getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.first11a:
        return MaterialPageRoute(
          builder: (context) => const First11a(),
        );
      case RouteName.bankInfo:
        return MaterialPageRoute(
          builder: (context) => const BankInfo(),
        );
      case RouteName.orderScreen:
        return MaterialPageRoute(
          builder: (context) => const OrderScreen(),
        );
      case RouteName.mainScreen:
        return MaterialPageRoute(
          builder: (context) => const Navigation(),
        );
      case RouteName.FoodsScreen:
        return MaterialPageRoute(
          builder: (context) => const FoodsScreen(),
        );
      case RouteName.walletScreen:
        return MaterialPageRoute(
          builder: (context) => const WalletScreen(),
        );
      case RouteName.restaurantSettings:
        return MaterialPageRoute(
          builder: (context) => const RestaurantSettings(),
        );
      case RouteName.addNewFood:
        return MaterialPageRoute(
          builder: (context) => const AddNewFood(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(child: Text('Route Not Found')),
          ),
        );
    }
  }
}
