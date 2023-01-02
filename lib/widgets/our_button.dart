import 'package:flutter/material.dart';

import '../utilities/my_app_colors.dart';

class OurButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final double radius;
  final double fontSize;
  final bool iWantGradient;
  final Color? color;

  const OurButton({
    Key? key,
    required this.text,
    required this.height,
    required this.width,
    required this.radius,
    required this.fontSize,
    this.iWantGradient = true,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: iWantGradient ? null : color ?? Colors.teal,
        borderRadius: BorderRadius.circular(radius),
        gradient: iWantGradient
            ? const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  MyAppColors.mainColorLight,
                  MyAppColors.mainColor,
                ],
              )
            : null,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: MyAppColors.appWhite,
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
