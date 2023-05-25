import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';

import 'widgets/foodScreenList.dart';

class FoodsScreen extends StatefulWidget {
  const FoodsScreen({Key? key}) : super(key: key);

  @override
  State<FoodsScreen> createState() => _FoodsScreenState();
}

class _FoodsScreenState extends State<FoodsScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          backgroundColor: AppColors.buttonColor,
          child: const Icon(
            Icons.add_circle_outline,
            size: 30,
          ),
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: height * 0.4,
                    width: width,
                    decoration: const BoxDecoration(
                        color: AppColors.lightSurfaceOrg,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10)))),
                Positioned(
                  top: 0,
                  child: Container(
                    height: height * 0.3,
                    width: width,
                    decoration: const BoxDecoration(
                        color: AppColors.lightSurfaceOrg,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      child: Image.network(
                          'https://thumbs.dreamstime.com/b/mcdonald-s-restaurant-20893471.jpg'),
                    ),
                  ),
                ),
                const Positioned(
                  top: 35,
                  left: 10,
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    size: 30,
                  ),
                ),
                Positioned(
                  top: 37,
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.buttonColor),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(
                        Icons.edit_document,
                        color: AppColors.lightSurfaceOrg,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  child: Container(
                    height: height * 0.1,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://tse1.mm.bing.net/th?id=OIP.gLKRllm_vfwJguw18FJKYAHaEK&pid=Api&rs=1&c=1&qlt=95&w=195&h=109'))),
                  ),
                ),
                const Positioned(
                    bottom: 45,
                    left: 90,
                    child: Text(
                      "Mc Donald's",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                const Positioned(
                    bottom: 28,
                    left: 92,
                    child: Text(
                      '76A eighth evenue, New York, US',
                      style: TextStyle(color: Colors.black26, fontSize: 13),
                    )),
                Positioned(
                  bottom: 4,
                  left: 90,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: AppColors.buttonColor,
                        size: 19,
                      ),
                      SizedBox(
                        width: width * 0.01,
                      ),
                      const Text(
                        '4.9',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      const Text(
                        '200+ Ratings',
                        style: TextStyle(
                            color: AppColors.greyLawLightPrimaryVariant),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: height * 0.075,
              color: AppColors.lightSurfaceOrg,
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0, top: 5),
                      child: Text(
                        'All Foods',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 11.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: SizedBox(
                            width: width * 0.26,
                            child: const Divider(
                                thickness: 2, color: Colors.orange)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8.0,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: FoodScreenList(image: image[index]),
                        ),
                      )),
            )
          ],
        ));
  }
}

List<String> image = [
  'https://tse1.mm.bing.net/th?id=OIP.V29o_4GLZlngVFGcIF4vkAHaE8&pid=Api&rs=1&c=1&qlt=95&w=170&h=113',
  'https://tse1.mm.bing.net/th?id=OIP.8k0izukbvMpnSdWDCthhbwHaD-&pid=Api&rs=1&c=1&qlt=95&w=183&h=98',
  'https://tse1.mm.bing.net/th?id=OIP.aX86Cr9Iyh_eiffcTQVvOQHaE7&pid=Api&rs=1&c=1&qlt=95&w=150&h=99',
  'https://tse1.mm.bing.net/th?id=OIP.1YtsxtQ7Re8ujtTy2dME3AHaFj&pid=Api&rs=1&c=1&qlt=95&w=165&h=124',
  'https://tse1.mm.bing.net/th?id=OIP.I_ORqM4BLtmQjqCBMcJA-wHaFu&pid=Api&rs=1&c=1&qlt=95&w=123&h=95'
];
