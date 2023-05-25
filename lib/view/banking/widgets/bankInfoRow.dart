import 'package:flutter/material.dart';

class BankInfoRow extends StatelessWidget {
  IconData icon;
  String bankName1;
  String bankName2;
  BankInfoRow(
      {Key? key,
      required this.bankName1,
      required this.icon,
      required this.bankName2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black26,
          ),
          SizedBox(
            width: width * 0.01,
          ),
          Text('$bankName1 :  ', style: const TextStyle(color: Colors.black26)),
          Text(
            bankName2,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
