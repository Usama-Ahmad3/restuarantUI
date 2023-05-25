import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';
import 'package:restuarant/view/addNewFood/addNewFood.dart';
import 'package:restuarant/view/banking/widgets/button.dart';
import 'package:restuarant/view/restuarantSettings/widgets/genralSettings.dart';

class RestaurantSettings extends StatefulWidget {
  const RestaurantSettings({Key? key}) : super(key: key);

  @override
  State<RestaurantSettings> createState() => _RestuarantScreenState();
}

class _RestuarantScreenState extends State<RestaurantSettings> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.keyboard_arrow_left,
            size: 30,
            color: AppColors.black,
          ),
        ),
        backgroundColor: AppColors.lightSurfaceOrg,
        title: const Text(
          'Restaurant Settings',
          style: TextStyle(color: AppColors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.04,
            ),
            Row(
              children: [
                SizedBox(width: width * 0.3),
                Text(
                  'Upload Logo',
                  style: TextStyle(color: AppColors.greyLawLightPrimaryVariant),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Center(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SizedBox(
                      width: width * 0.41,
                      child: Opacity(
                        opacity: 0.6,
                        child: Image.asset('assets/images/m.jpg'),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 8,
                    left: 39,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 70,
                      color: AppColors.lightSurfaceOrg,
                    ),
                  )
                ],
              ),
            ),
            ...List.generate(
                4,
                (index) => GeneralSettings(
                      initialValue: initials[index],
                      name: name[index],
                    )),
            SizedBox(
              height: height * 0.01,
            ),
            Wrap(
              children: [
                AddNewFoodState()
                    .generalWidget(height, width, 'Open Time', '09:30 am'),
                AddNewFoodState()
                    .generalWidget(height, width, 'Close Time', '11:00 pm'),
              ],
            ),
            Container(
                color: AppColors.lightSurfaceOrg,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 17.0, vertical: 12),
                      child: Text(
                        'Upload Cover photo',
                        style: TextStyle(
                            color: AppColors.greyLawLightPrimaryVariant),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Stack(
                      children: [
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: SizedBox(
                              width: width * 0.92,
                              child: Opacity(
                                opacity: 0.5,
                                child: Image.asset('assets/images/m.jpg'),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 40,
                          left: 135,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 100,
                            color: AppColors.lightSurfaceOrg,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: height * 0.02),
                    Button(
                      onTap: () {},
                      title: 'Update',
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

List name = [
  'Restaurant Name',
  'Contact Number',
  'Address',
  'Minimum Order Amount'
];
List initials = [
  "Mc Donald's",
  '+880123456789',
  '76A eighth evenue, New York, US',
  '0'
];
