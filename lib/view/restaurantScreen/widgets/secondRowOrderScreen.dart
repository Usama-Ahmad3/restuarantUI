import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';
import 'package:restuarant/view/restaurantScreen/orderHistory.dart';

class SecondRowOrderScreen extends StatefulWidget {
  const SecondRowOrderScreen({Key? key}) : super(key: key);

  @override
  State<SecondRowOrderScreen> createState() => _SecondRowOrderScreenState();
}

class _SecondRowOrderScreenState extends State<SecondRowOrderScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.04,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyLawLightIcon),
          borderRadius: BorderRadius.circular(2)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.2),
            child: InkWell(
              onTap: () {
                if (OrderScreenState.color1 == Colors.white) {
                  OrderScreenState.color1 = AppColors.buttonColor;
                  OrderScreenState.color2 = Colors.white;
                  OrderScreenState.color3 = Colors.white;
                }
                setState(() {});
              },
              child: Container(
                height: height * 0.07,
                width: width * 0.28,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(2),
                      topRight: Radius.circular(2),
                      bottomRight: Radius.circular(2),
                      bottomLeft: Radius.circular(2)),
                  color: OrderScreenState.color1,
                ),
                child: Center(
                  child: Text('Confirmed (23)',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color:
                              OrderScreenState.color1 == AppColors.buttonColor
                                  ? Colors.white
                                  : Colors.black)),
                ),
              ),
            ),
          ),
          RotatedBox(
            quarterTurns: 1,
            child: SizedBox(
              width: width * 0.09,
              child: const Divider(
                color: AppColors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.5),
            child: InkWell(
              onTap: () {
                if (OrderScreenState.color2 == Colors.white) {
                  OrderScreenState.color1 = Colors.white;
                  OrderScreenState.color2 = AppColors.buttonColor;
                  OrderScreenState.color3 = Colors.white;
                }
                setState(() {});
              },
              child: Container(
                height: height * 0.07,
                width: width * 0.28,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(2),
                      topRight: Radius.circular(2),
                      bottomRight: Radius.circular(2),
                      bottomLeft: Radius.circular(2)),
                  color: OrderScreenState.color2,
                ),
                child: Center(
                  child: Text('Cooking',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color:
                              OrderScreenState.color2 == AppColors.buttonColor
                                  ? Colors.white
                                  : Colors.black)),
                ),
              ),
            ),
          ),
          RotatedBox(
            quarterTurns: 1,
            child: SizedBox(
              width: width * 0.09,
              child: const Divider(
                color: AppColors.black,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (OrderScreenState.color3 == Colors.white) {
                OrderScreenState.color1 = Colors.white;
                OrderScreenState.color2 = Colors.white;
                OrderScreenState.color3 = AppColors.buttonColor;
              }
              setState(() {});
            },
            child: Container(
              height: height * 0.07,
              width: width * 0.3,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(2),
                    topRight: Radius.circular(2),
                    bottomRight: Radius.circular(2),
                    bottomLeft: Radius.circular(2)),
                color: OrderScreenState.color3,
              ),
              child: Center(
                child: Text('Ready for handover',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: OrderScreenState.color3 == AppColors.buttonColor
                            ? Colors.white
                            : Colors.black)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
