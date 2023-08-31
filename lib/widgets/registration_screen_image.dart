import 'package:flutter/material.dart';

class RegistrationScreenImage extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  RegistrationScreenImage({
    required this.image,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 70.0),
      child: Center(
        child: Image.asset(image,
        width: width,
        height: height,
        ),
      ),
    );}
}