import 'package:flutter/material.dart';
import 'package:rozpetal/const/Colors.dart';

class ProgressIndicatorComponent extends StatelessWidget {
  double value;
  ProgressIndicatorComponent({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: LinearProgressIndicator(
          backgroundColor: primaryColor.withOpacity(0.3),
          color: primaryColor,
          minHeight: 50,
          value: value,
        ),
      ),
    );
  }
}

class RoundedLinearProgressIndicator extends StatelessWidget {
  double value;
  final double height;
  final double borderRadius;

  RoundedLinearProgressIndicator({
    Key? key,
    this.value = 0,
    this.height = 30,
    this.borderRadius = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.4),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: MediaQuery.of(context).size.width * (value),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
