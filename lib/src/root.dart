
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sns_test2/src/controller/loginController.dart';

class SnsLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "SNS RestAPI 로그인 Test",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  LoginController().goToLoginPage();
                },
                child: Text(
                  "카카오톡 로그인하기",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: TextButton.styleFrom(
                    primary: Colors.black, backgroundColor: Colors.yellow),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.snackbar("알림", "아직이라구" );
                },
                child: Text(
                  "애플 로그인하기",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: TextButton.styleFrom(fixedSize: Size(150, 40) ,
                    primary: Colors.white, backgroundColor: Colors.blueGrey),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.snackbar("알림", "아직이라구" );
                },
                child: Text(
                  "구글 로그인하기",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: TextButton.styleFrom(fixedSize: Size(150, 40) ,
                    primary: Colors.blue, backgroundColor: Colors.white70.withOpacity(1)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void test() {
  print("test");
}