import 'package:flutter/material.dart';

class VideoList extends StatelessWidget {
  const VideoList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                // child: RegistrationScreenImage(image: 'assets/images/video1.jpg', height: 217.0, width: 343.0),
               child: Image.asset('assets/images/video1.jpg')
                ),
                const Positioned(
                  left: 145.0,
                  top: 65.0,
                  child: CircleAvatar(
                    maxRadius: 35.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.play_arrow,color: Colors.black,),
                  ),
                )
            ],
          ),
          Divider(
            
          ),
      ],
    );
  }
}