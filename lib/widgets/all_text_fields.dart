import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:task1/screens/media_screen.dart';
import 'package:task1/widgets/password_textfield_widget.dart';
import 'package:task1/widgets/register_button.dart';
import 'package:task1/widgets/textformfield_widget.dart';
import 'package:task1/widgets/vertical_sized_box.dart';

class AllTextFields extends StatelessWidget {
  const AllTextFields({super.key});

  @override
  Widget build(BuildContext context) {
     final formkey=GlobalKey<FormState>();
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final numController = TextEditingController();
    final passController = TextEditingController();
    return Form(
      key: formkey,
      child: Column(
        children: [
           BuildTextFormField(
                      controller: nameController,
                      validator: (value) {
                         if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value))
                          {
                            return 'Enter correct name';
                          }
                        else
                          {
                            return null;
                          }
                      },
                      label: 'Full Name', icon: Icons.person,textInputType: TextInputType.name,),
                    VerticalSizedBox(15.0),
                    BuildTextFormField(
                      controller: emailController,
                      validator: ValidationBuilder().email().minLength(15).maxLength(50).build(),
                      label: 'Email', icon: Icons.email,textInputType: TextInputType.emailAddress,),
                    VerticalSizedBox(15.0),
                    BuildTextFormField(
                      controller: numController,
                      validator: (value){
                        if(value!.isEmpty || !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$').hasMatch(value))
                        {
                          return 'Enter correct phone number';
                        }
                        else
                        {
                          return null;
                        }
                      },
                      label: 'Mobile', icon: Icons.phone_android,textInputType: TextInputType.number,),
                    VerticalSizedBox(15.0),
                    PasswordTextField(controller: passController,),
                    VerticalSizedBox(15.0),
                    RegisterButton(
                      onPressed: () {
                        if(formkey.currentState!.validate()){
                          print(nameController.text);
                          print(emailController.text);
                          print(numController.text);
                          print(passController.text);
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                              return MediaScreen();
                            },),);
                            }
                            
                      },
                    ),
        ],
      ),
    );
  }
}