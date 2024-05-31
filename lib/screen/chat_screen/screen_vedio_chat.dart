import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

class ScreenVedioChat extends StatelessWidget {
  const ScreenVedioChat(
      {super.key, required this.conferenceID, required this.user_id});
  final String conferenceID;
  final String user_id;
  @override
  Widget build(BuildContext context) {
    //
    return ZegoUIKitPrebuiltVideoConference(
        appID: 1028346556,
        appSign:
            'fd7cf8e33d92eef97dc631dad914627a89d632bf8a420a26e20df3eb0b1d64ca',
        conferenceID: conferenceID,
        userID: user_id,
        userName: 'user ${user_id}',
        config: ZegoUIKitPrebuiltVideoConferenceConfig());
  }
}
