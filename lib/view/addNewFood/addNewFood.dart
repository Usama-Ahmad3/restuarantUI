import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';
import 'package:restuarant/view/banking/widgets/button.dart';
import 'package:restuarant/view/restuarantSettings/widgets/genralSettings.dart';

class AddNewFood extends StatefulWidget {
  const AddNewFood({Key? key}) : super(key: key);

  @override
  State<AddNewFood> createState() => AddNewFoodState();
}

class AddNewFoodState extends State<AddNewFood> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
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
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GeneralSettings(name: 'Food Name', initialValue: 'Burger'),
            GeneralSettings(name: 'Price', initialValue: '£129'),
            Wrap(
              children: [
                generalWidget(height, width, 'Discount', '10'),
                generalWidgetIcon(height, width, 'Discount Type', 'Percent'),
                generalWidgetIcon(height, width, 'Category', 'Biryani'),
                generalWidgetIcon(height, width, 'Sub Category', 'Chicken')
              ],
            ),
            GeneralSettings(name: 'Addon', initialValue: 'Search Addons'),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              children: [
                ...List.generate(
                    2,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10),
                          child: Container(
                            height: height * 0.04,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                color: AppColors.buttonColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              title[index],
                              style: const TextStyle(
                                  fontSize: 17,
                                  color: AppColors.lightSurfaceOrg),
                            )),
                          ),
                        ))
              ],
            ),
            Wrap(
              children: [
                generalWidget(
                    height, width, 'Available Time Starts', '09:30 am'),
                generalWidget(height, width, 'Available Time Ends', '11:00 pm')
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Description',
                    style: TextStyle(color: Colors.black26),
                  )),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: height * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.lightSurfaceOrg,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      "122 Free images of Mcdonalds. Related Images: burger mcdonald's fast food montana hamburger junk food food fries french fries. Mcdonalds photos for download. All pictures are free to use."),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.lightSurfaceOrg,
              ),
              child: Column(
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Food Image',
                        style: TextStyle(color: Colors.black26),
                      ),
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
                          child: Container(
                            width: width * 0.35,
                            height: height * 0.15,
                            child: Opacity(
                              opacity: 0.5,
                              child: Image.network(
                                  'https://tse4.mm.bing.net/th?id=OIP.remAszvA5JYM4jhqm2PnkwHaGq&pid=Api&P=0&h=180'),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 30,
                        left: 160,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 45,
                          color: AppColors.lightSurfaceOrg,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: height * 0.01),
                  Button(
                    onTap: () {},
                    title: 'Submit',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  generalWidget(double height, double width, String name, String initial) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width * 0.45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              child: Text(
                name,
                style: TextStyle(color: Colors.black26),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: const Offset(1, 1))
                ],
              ),
              child: TextFormField(
                onTap: () {},
                initialValue: initial,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                    disabledBorder: InputBorder.none,
                    fillColor: AppColors.lightSurfaceOrg,
                    filled: true),
              ),
            )
          ],
        ),
      ),
    );
  }

  generalWidgetIcon(double height, double width, String name, String initial) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width * 0.45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
              child: Text(name),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(1, 1))
                ],
              ),
              child: TextFormField(
                onTap: () {},
                initialValue: initial,
                decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: AppColors.black,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                    disabledBorder: InputBorder.none,
                    fillColor: AppColors.lightSurfaceOrg,
                    filled: true),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List title = ['Coke', 'Cheese'];
