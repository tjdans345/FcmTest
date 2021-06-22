import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sns_test2/src/controller/loginController.dart';
import 'package:sns_test2/src/model/jsdata.dart';


class LoginCompletePage extends StatelessWidget {
  late Jsdata resultData;

  LoginCompletePage(Jsdata resultData) {
    this.resultData = resultData;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("로그인 완료"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => { Get.snackbar("데이터 값", resultData.id.toString())},
                child: Text("Data확인"),
              ),
              Text(resultData.id.toString()),
              Text(resultData.statusCode.toString()),
              Text(resultData.email.toString()),
              Text(resultData.gender.toString()),
              Text(resultData.name.toString()),
              Text(resultData.accessToken.toString()),
              ElevatedButton(
                onPressed: () => { LoginController().requestLogout(resultData.accessToken.toString()) },
                child: Text("로그아웃 버튼"),
              ),
            ],
          ),
        ),
      ),
    );
  }


}

