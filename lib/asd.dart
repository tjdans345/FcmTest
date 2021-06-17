import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Hiyo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late var value = Get.arguments;
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("gigigigig"),
        ),
        body: ElevatedButton(
          onPressed: () => {Get.snackbar('CallBack Data Test', value)},
          child: Text("눌러보세유"),
        ),
      ),
    );
  }
}
