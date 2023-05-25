import 'package:flutter/material.dart';
import 'package:restuarant/res/colors.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  String label;
  FocusNode? current;
  FocusNode? next;
  TextFieldWidget(
      {Key? key,
      this.current,
      this.next,
      required this.controller,
      required this.hintText,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TextFormField(
        focusNode: current,
        onFieldSubmitted: (e) {
          current!.unfocus();
          next!.requestFocus();
        },
        controller: controller,
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.lightSurfaceOrg,
            enabled: true,
            disabledBorder:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: hintText,
            label: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(label),
            )),
      ),
    );
  }
}
