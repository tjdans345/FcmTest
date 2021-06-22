import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sns_test2/src/controller/loginController.dart';
import 'package:sns_test2/src/root.dart';

//카카오 로그인 테스트
void main() {
  Get.put<LoginController>(LoginController());
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
