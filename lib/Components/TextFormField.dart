import 'package:flutter/material.dart';
import 'package:rozpetal/const/Colors.dart';

class ConstTextFormField extends StatelessWidget {
  String hint, label;
  Widget icon;
  ConstTextFormField(
      {Key? key, required this.hint, required this.label, required this.icon})
      : super(key: key);

  @override
  FocusNode focusNode = FocusNode();
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        focusNode: focusNode,
        onTapOutside: (value) {
          focusNode.unfocus();
        },
        decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.all(3.0),
              child: icon,
            ),
            hintText: hint,
            labelText: label,
            labelStyle: TextStyle(color: primaryColor),
            hintTextDirection: TextDirection.rtl,
            focusColor: primaryColor,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
                borderRadius: BorderRadius.circular(15)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}

class ConstTextFormField2 extends StatelessWidget {
  String hint, label;
  Widget icon;
  ConstTextFormField2(
      {Key? key, required this.hint, required this.label, required this.icon})
      : super(key: key);

  @override
  FocusNode focusNode = FocusNode();
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        focusNode: focusNode,
        onTapOutside: (value) {
          focusNode.unfocus();
        },
        decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.all(3.0),
              child: icon,
            ),
            hintText: hint,
            labelText: label,
            labelStyle: TextStyle(color: Colors.grey),
            hintTextDirection: TextDirection.rtl,
            focusColor: Colors.grey,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(15)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
