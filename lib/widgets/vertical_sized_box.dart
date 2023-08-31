import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class VerticalSizedBox extends StatelessWidget {
  final double height; 
  VerticalSizedBox(this.height);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(height: height,),
    );
  }
}