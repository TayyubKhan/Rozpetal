import 'package:flutter/material.dart';
import 'package:rozpetal/const/Colors.dart';

class RoundedButton extends StatelessWidget {
  VoidCallback onPressed;
  RoundedButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1;
    double width = MediaQuery.of(context).size.width * 1;
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(15)),
        child: const Center(
          child: Text(
            'اكمال عملية الشراء',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class RoundedButton2 extends StatelessWidget {
  VoidCallback onPressed;
  RoundedButton2({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 1;
    double width = MediaQuery.of(context).size.width * 1;
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height * 0.07,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: const Border(
              top: BorderSide(color: Colors.black),
              bottom: BorderSide(color: Colors.black),
              right: BorderSide(color: Colors.black),
              left: BorderSide(color: Colors.black),
            )),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.apple),
              Text(
                'Google Pay',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                'ا',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
