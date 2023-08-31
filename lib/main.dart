import 'package:flutter/material.dart';
import 'package:task1/screens/registration_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      title: 'Task 1',
      home: RegistrationPage(),
    );
  }
}
