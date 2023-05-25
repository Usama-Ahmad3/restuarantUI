import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';

class FoodScreenList extends StatelessWidget {
  String image;
  FoodScreenList({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.lightSurfaceOrg,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(1, 1))
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.3,
                width: width * 0.25,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 9, top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Item Name',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: height * 0.008,
                ),
                Row(
                  children: [
                    ...List.generate(
                        5,
                        (index) => const Icon(
                              Icons.star,
                              size: 13,
                              color: AppColors.buttonColor,
                            ))
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                const Text(
                  '£3.50',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
