import 'package:flutter/material.dart';

class PhotoGrid extends StatelessWidget {
  const PhotoGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset('assets/images/grid.jpg',fit: BoxFit.cover,),
    );
  }
}