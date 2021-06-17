import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sns_test2/asd.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WEbViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("웹뷰"),
        ),
        body: WebView(
            initialUrl:
                "https://kauth.kakao.com/oauth/authorize?client_id=79f79d24d2f1f339724c007a9913ecba&redirect_uri=http://192.168.0.30:8080/test/test&response_type=code",
            javascriptMode: JavascriptMode.unrestricted,
            javascriptChannels: Set.from([
              JavascriptChannel(
                name: "zz123",
                onMessageReceived: (result) {
                  if (!result.message.isEmpty) {
                    Get.to(() => Hiyo(), arguments: result.message);
                  }
                },
              ),
            ])));
  }
}

//     "https://kauth.kakao.com/oauth/authorize?client_id=79f79d24d2f1f339724c007a9913ecba&redirect_uri=http://localhost:8090/moonmarket/mypage/kakaologin&response_type=code";
