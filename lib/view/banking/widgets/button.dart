import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  VoidCallback onTap;
  IconData? icon;
  String title;
  Button({Key? key, required this.onTap, this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: InkWell(
          onTap: onTap,
          child: Container(
              height: height * 0.057,
              decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(9)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      title,
                      style: const TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
