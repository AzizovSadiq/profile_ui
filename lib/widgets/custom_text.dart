import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      required this.textColor,
      this.textSize,
      this.fontWeight,
      this.textAlign});
  final String text;
  final Color textColor;
  final double? textSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(text,
    textAlign: textAlign,
    style: TextStyle(
      color: textColor,
      fontSize: textSize,
      fontWeight: fontWeight,
      ),);
  }
}
