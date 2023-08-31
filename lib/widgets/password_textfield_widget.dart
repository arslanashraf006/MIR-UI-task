import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
 final TextEditingController controller;
 PasswordTextField({required this.controller});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isPasswordVisible=false;
  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.only(left: 51.0, right: 51.0),
                child: TextFormField(
                  controller: widget.controller,
    validator: (value) {
      RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value!.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Enter valid password';
      } else {
        return null;
      }
    }
    },
    obscureText: isPasswordVisible,
    textInputAction: TextInputAction.done,
    decoration: InputDecoration(
      labelText: 'Password',
      labelStyle: const TextStyle(color: Color(0xffA8A8A8)),
      border: const UnderlineInputBorder(),
      enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                       // width: 2.0,
                        color: Color(0xffA8A8A8)
                        ),
                    ),
      prefixIcon: const Icon(Icons.key,color: Color(0xffFFD830),),
      suffixIcon: IconButton(onPressed: (){
        setState(() {
          isPasswordVisible=!isPasswordVisible;
        });
      },
        icon: isPasswordVisible
          ? const Icon(Icons.visibility_off, color: Color(0xffA8A8A8),)
          : const Icon(Icons.visibility, color: Color(0xffA8A8A8),),
      ),
    ),
  ),
              );
  }
}


























//   child: TextFormField(
              //     // onChanged: (value)=>setState(() {
              //     //        this.password=value;
              //     //        }),
              //       //  onSubmitted: (value)=>setState(() {
              //       //  this.password=value;
              //       //    }),
              //     decoration: InputDecoration(
              //       label: Text(widget.label,style: TextStyle(color: Color(0xffA8A8A8)),),
              //       suffixIcon: IconButton(onPressed: (){
              // //  setState(() {
              //      isPasswordVisible=!isPasswordVisible;
              //       //   });
              //         }, 
              //        icon: isPasswordVisible
              //        ? Icon(Icons.visibility_off, color: Color(0xffA8A8A8),)
              //       : Icon(Icons.visibility, color: Color(0xffA8A8A8)),
              //      ),
              //       prefixIcon: Icon(widget.icon,color: Color(0xffFFD830),),
              //       border: UnderlineInputBorder(),
              //       enabledBorder: UnderlineInputBorder(
              //         borderSide: BorderSide(
              //          // width: 2.0,
              //           color: Color(0xffA8A8A8)
              //           ),
              //       ),
              //     ),
              //     keyboardType: TextInputType.visiblePassword,
              //     obscureText: isPasswordVisible,
              //   ),