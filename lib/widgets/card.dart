import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget child;
  final BorderSide? borderSide;
  final double height;
  final double width;
  const AppCard({
    Key? key,
    required this.child,
    this.borderSide,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: borderSide ?? BorderSide.none),
        color: ktranparentColor,
        child: child,
      ),
    );
  }
}
