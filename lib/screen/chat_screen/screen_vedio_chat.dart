import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

class ScreenVedioChat extends StatefulWidget {
  const ScreenVedioChat(
      {super.key, required this.conferenceID, required this.user_id});
  final String conferenceID;
  final String user_id;

  @override
  State<ScreenVedioChat> createState() => _ScreenVedioChatState();
}

class _ScreenVedioChatState extends State<ScreenVedioChat> {
  //define a timer varible
  Timer? endCallTimer;

  @override
  void initState() {
    super.initState();
    startEndTimer();
  }

  @override
  void dispose() {
    // timer is cancled  avoid  the  potetal leak
    endCallTimer?.cancel();
    super.dispose();
  }
  //define a function for start end timer

  void startEndTimer() async {
    endCallTimer = Timer(Duration(seconds: 30), endCall);
  }

// end the vedio call
//it navigates away from the current page 

  void endCall() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    //
    return ZegoUIKitPrebuiltVideoConference(
        appID: 1028346556,
        appSign:
            'fd7cf8e33d92eef97dc631dad914627a89d632bf8a420a26e20df3eb0b1d64ca',
        conferenceID: widget.conferenceID,
        userID: widget.user_id,
        userName: 'user ${widget.user_id}',
        config: ZegoUIKitPrebuiltVideoConferenceConfig());
  }
}
