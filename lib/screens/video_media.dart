import 'package:flutter/material.dart';
import 'package:task1/widgets/video_list.dart';

class VideoMedia extends StatelessWidget {
  const VideoMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 7.0,right: 7.0,top: 7.0),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder:  (context, index) {
                return const VideoList();
              },)
            ),
          );
  }
}