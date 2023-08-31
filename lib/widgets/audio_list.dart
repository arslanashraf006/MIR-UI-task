import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AudioList extends StatelessWidget {
  const AudioList({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Color(0xffFFD830),
                  child: Icon(Icons.play_arrow,color: Colors.black,),
                ),
                title: Text('${DateFormat.yMMMd().format(DateTime.now())}',
                style: const TextStyle(color: Color(0xffA8A8A8),),
                ),
                subtitle: const Text('Contrary to popular belief lorem Ipsum',
                style: TextStyle(color: Colors.white),
                ),
                tileColor: const Color(0xff292B2E),
              ),
    );
  }
}