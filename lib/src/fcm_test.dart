import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FcmTestMain extends StatefulWidget {
  const FcmTestMain({Key? key}) : super(key: key);


  @override
  _FcmTestMainState createState() => _FcmTestMainState();
}

class _FcmTestMainState extends State<FcmTestMain> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firebaseCloudMessaging_Listeners();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

void firebaseCloudMessaging_Listeners() {
  if(Platform.isIOS) return;

  _firebaseMessaging.get

}