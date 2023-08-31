import 'package:flutter/material.dart';
import 'package:task1/widgets/photo_grid.dart';

class PhotoMedia extends StatelessWidget {
  const PhotoMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            crossAxisCount: 3,
            //childAspectRatio: 1/3,
            ),
            padding: const EdgeInsets.all(7.0),
            itemCount: 50,
            itemBuilder: (context,index){
            return const PhotoGrid();
            }
            ),
          );
  }
}