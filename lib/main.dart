import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:sns_test2/asd.dart';
import 'package:sns_test2/web_view_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SnsLogin(),
    );
  }
}

class SnsLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "카카오톡 로그인 Test",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              // restTest();
              Get.to(WEbViewPage());
            },
            child: Text(
              "카카오톡으로 로그인하기",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            style: TextButton.styleFrom(
                primary: Colors.black, backgroundColor: Colors.yellow),
          ),
        ),
      ),
    );
  }
}

void restTest() async {
  print("왔어");
  // var url =
  //     "https://kauth.kakao.com/oauth/authorize?client_id=79f79d24d2f1f339724c007a9913ecba&redirect_uri=http://localhost:8090/moonmarket/mypage/kakaologin&response_type=code";
  var url = Uri.https("kauth.kakao.com", "/oauth/authorize", {
    'client_id': '79f79d24d2f1f339724c007a9913ecba',
    'redirect_uri': 'http://192.168.0.30:8080/test/test',
    'response_type': 'code);'
  });

  var response = await http.get(url);
  print(response.body);
}
