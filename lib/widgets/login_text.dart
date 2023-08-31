import 'package:flutter/material.dart';
import 'package:task1/widgets/text_widget.dart';

class LoginTextWidget extends StatelessWidget {
  const LoginTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: 'Already have an account?', 
                        color: Color(0xffFFFFFF), 
                        fontWeight: FontWeight.normal, 
                        fontSize: 15.0,
                        ),
                        TextWidget(
                        text: 'Login', 
                        color: Color(0xffF6D72E), 
                        fontWeight: FontWeight.bold, 
                        fontSize: 15.0,
                        ),
                    ],
                  );
  }
}