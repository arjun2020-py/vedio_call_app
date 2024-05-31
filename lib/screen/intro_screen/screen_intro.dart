import 'dart:math';

import 'package:flutter/material.dart';

import '../chat_screen/screen_vedio_chat.dart';

class ScreenIntro extends StatelessWidget {
  const ScreenIntro({super.key});

  @override
  Widget build(BuildContext context) {
    //conferenceID for   vedio call setup
    const String conferenceID = 'conference_id';
   
   //userID for  the  vediocall setup
    String userID = Random().nextInt(1000).toString();
    return Scaffold(
      body: const Center(
        child: Text('vedio chat'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ScreenVedioChat(
              conferenceID: conferenceID,
              user_id: userID,
            ),
          ));
        },
        child: const Icon(Icons.video_call),
      ),
    );
  }
}
