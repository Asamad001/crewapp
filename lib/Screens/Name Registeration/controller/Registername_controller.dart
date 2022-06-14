import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterNameController extends GetxController {
  final snackBar = SnackBar(
    backgroundColor: Colors.red.shade900,
    duration: Duration(milliseconds: 300),
    content: const Text('Please enter your name'),
  );

  TextEditingController name = TextEditingController();
  Gonextpage(dynamic key, String pagename, dynamic context) {
    if (key.currentState!.validate() && name.text.length >= 5) {
      Get.toNamed(pagename);
      name.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  // validation(dynamic value) {
  //   if (RegExp(
  //           r'^([a-zA-Z]{1,}\s[a-zA-Z]{1,}?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)')
  //       .hasMatch(value!)) {
  //     return "Please Enter Your Name";
  //   }
  //   update();
  // }
}
