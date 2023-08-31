import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  TextWidget({
    required this.text,
    required this.color,
    required this.fontWeight,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Text(text,
            style: TextStyle(
              color: color,
              fontWeight: fontWeight,
              fontSize: fontSize,
            ),
            ),
    );
  }
}