import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneverifyController extends GetxController {
  // ignore: non_constant_identifier_names

  bool done = false;
  TextEditingController value = TextEditingController();
  final snackBar = SnackBar(
    backgroundColor: Colors.red.shade900,
    duration: Duration(milliseconds: 300),
    content: const Text('Please enter valid phone number'),
  );
  verify() {
    Timer(Duration(milliseconds: 50), () {
      if (value.text.length >= 10) {
        done = true;
      } else {
        done = false;
      }
      update();
    });
  }

  Gonextpage(dynamic key, String pagename, dynamic context) {
    if (key.currentState!.validate()) {
      Get.toNamed(pagename);
      value.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
