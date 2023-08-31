import 'package:flutter/material.dart';
import 'package:task1/widgets/all_text_fields.dart';
import 'package:task1/widgets/login_text.dart';
import 'package:task1/widgets/registration_screen_image.dart';
import 'package:task1/widgets/text_widget.dart';
import 'package:task1/widgets/vertical_sized_box.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});
 
  @override
  Widget build(BuildContext context) {
    //final formkey=GlobalKey<FormState>();
   // final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: const Color(0xff292B2E),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                RegistrationScreenImage(image: 'assets/images/logo.png',height: 152.0, width: 182.0,),
                VerticalSizedBox(35.0),
                TextWidget(
                  text: 'Create an Account', 
                  color: const Color(0xffF6D72E), 
                  fontWeight: FontWeight.bold, 
                  fontSize: 30.0,
                  ),
                  VerticalSizedBox(25.0),
                 const AllTextFields(),
                  VerticalSizedBox(25.0),
                  const LoginTextWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}