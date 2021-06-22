import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:sns_test2/src/model/jsdata.dart';
import 'package:sns_test2/src/pages/loginCompletePage.dart';
import 'package:sns_test2/src/root.dart';
import 'package:sns_test2/web_view_page.dart';

class LoginController extends GetxController{
  void goToLoginPage() {
    Get.to(WEbViewPage());
  }

  // LoginController().messageReceivedResult(result);
  void messageReceivedResult (String result, String code) {
    print("ddd");
    final resultData = Jsdata.fromJson(jsonDecode(result));

    print("xxx ${resultData.statusCode}");
    if(code == resultData.state) {
      if (!200.isEqual(resultData.statusCode)) {
        // Get.off(() => LoginCompletePage(), binding: BindingsBuilder(() => Get.put(LoginController())), arguments: resultData);
      } else {
        Get.off(LoginCompletePage(resultData));
      }
    } else{
      Get.snackbar("경고", "잘못된 접근입니다.");
    }
  }

  void requestLogout(String accessToken) async {
    // var url = Uri.https("https://kapi.kakao.com", "v1/user/logout");
    var url = Uri.parse("https://kapi.kakao.com/v1/user/logout");
    final response = await http.post(
      url,
      headers: {"Authorization":"Bearer $accessToken"}
    );
    if(response.statusCode == 200) {
      Get.to(() => SnsLogin());
    } else {
      Get.snackbar("알림", "로그아웃에 실패했습니다 다시 시도해주세요");
    }
  }


}