import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';

class GeneralSettings extends StatelessWidget {
  String name;
  String initialValue;
  GeneralSettings({Key? key, required this.name, required this.initialValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 12),
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
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(1, 1))
              ],
            ),
            child: TextFormField(
              onTap: () {},
              initialValue: initialValue,
              style: const TextStyle(color: Colors.black26),
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
    );
  }
}
