import 'package:flutter/material.dart';
import 'package:rozpetal/const/Colors.dart';

class TextinRow extends StatelessWidget {
  String title1, title2;
  TextinRow({Key? key, required this.title1, required this.title2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title2, style: const TextStyle(fontSize: 24, color: Colors.black)),
        Text(title1, style: TextStyle(fontSize: 24, color: primaryColor)),
      ],
    );
  }
}
