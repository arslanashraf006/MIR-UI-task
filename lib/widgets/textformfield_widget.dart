import 'package:flutter/material.dart';
 class BuildTextFormField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextInputType textInputType;
  final Function validator;
  final TextEditingController controller;
  BuildTextFormField({
    required this.label,
    required this.icon,
    required this.textInputType,
    required this.validator,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.only(left: 51.0, right: 51.0),
                //height: 60.0,
                child: TextFormField(
                  controller: controller,
                  validator: (value) => validator(value),
                  decoration: InputDecoration(
                    label: Text(label,style: const TextStyle(color: Color(0xffA8A8A8)),),
                    prefixIcon: Icon(icon,color: const Color(0xffFFD830),),
                    border: const UnderlineInputBorder(),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                       // width: 2.0,
                        color: Color(0xffA8A8A8)
                        ),
                    ),
                  ),
                  textInputAction: TextInputAction.next,
                  keyboardType: textInputType,
                ),
              );
  }
}