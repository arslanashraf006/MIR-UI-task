import 'package:flutter/material.dart';
import 'package:task1/widgets/text_widget.dart';

class RegisterButton extends StatelessWidget {
  final VoidCallback onPressed;
  RegisterButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290.0,
      height: 40.0,
      child: ElevatedButton(onPressed: onPressed, 
      child: TextWidget(
        text: 'Register', 
        color: Colors.black, 
        fontWeight: FontWeight.bold, 
        fontSize: 20.0),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffF6D72E),
        ),
        ),
    );
  }
}