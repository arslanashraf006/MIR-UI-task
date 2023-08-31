import 'package:flutter/material.dart';
import 'package:task1/screens/audio_media.dart';
import 'package:task1/screens/photo_media.dart';
import 'package:task1/screens/video_media.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({super.key});

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  List<String> items = [
    "Video Media",
    "Audia Media",
    "Photo Media",
  ];
  List<Widget> screens = [
      VideoMedia(),
      AudioMedia(),
      PhotoMedia(),
     ];

   bool isClicked = false;

    var current = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff292B2E),
      appBar: AppBar(
        backgroundColor: Color(0xff292B2E),
        elevation: 0,
        leading: Icon(Icons.arrow_back),
        title: Text('Media'),
        centerTitle: true,
        actions: [
          Image.asset('assets/images/pluscircle.png'),
        ],
      ),
        body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(5),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.all(5),
                            width: 130,
                            height: 40,
                            decoration: BoxDecoration(
                              color: current==index ? Color(0xffF6D72E) : Color(0xff434446),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: current == index ? Color(0xff292B2E) : Color(0xffACACAC),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 7.0),
                width: double.infinity,
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    screens[current],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
