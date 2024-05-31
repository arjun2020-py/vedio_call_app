import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
      //#f6d5d5
      backgroundColor: Color(0xfff07b7f),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                ' Vedio Chat',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.black),
              ),
              Lottie.asset(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  'assets/images/Animation - 1714725933185.json'),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.4,
        child: FloatingActionButton(
          isExtended: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ScreenVedioChat(
                conferenceID: conferenceID,
                user_id: userID,
              ),
            ));
          },
          child: const Icon(
            Icons.videocam,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
