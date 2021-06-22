import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sns_test2/src/controller/loginController.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPageGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int size = Random().nextInt(800000).toInt();
    print(size);
    return Scaffold(
        body: WebView(
            initialUrl:
            "https://kauth.kakao.com/oauth/authorize?client_id=79f79d24d2f1f339724c007a9913ecba&redirect_uri=http://192.168.0.30:8080/test/test&response_type=code&state=$size",
            javascriptMode: JavascriptMode.unrestricted,
            javascriptChannels: Set.from([
              JavascriptChannel(
                name: "zz123",
                onMessageReceived: (result) => LoginController().messageReceivedResult(result.message, size.toString())
               ),
            ])));
  }
}

//     "https://kauth.kakao.com/oauth/authorize?client_id=79f79d24d2f1f339724c007a9913ecba&redirect_uri=http://localhost:8090/moonmarket/mypage/kakaologin&response_type=code";
