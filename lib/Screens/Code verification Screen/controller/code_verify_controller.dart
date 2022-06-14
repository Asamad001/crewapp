import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CodeverifyController extends GetxController {
  // ignore: non_constant_identifier_names
  bool done = false;
  TextEditingController value = TextEditingController();
  final snackBar = SnackBar(
    backgroundColor: Colors.red.shade900,
    duration: Duration(milliseconds: 300),
    content: const Text('Please enter valid code'),
  );
  function() {
    Timer(Duration(milliseconds: 200), () {
      if (value.text.length == 4) {
        done = true;
      } else {
        done = false;
      }
      update();
    });
  }

  Gonextpage(String pagename, dynamic context) {
    if (done == true) {
      Get.toNamed(pagename);
      value.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    update();
  }

  Buttoncolor() {
    if (done) {
      return Colors.black;
    } else {
      return Colors.grey.shade100;
    }
  }

  Textcolor() {
    if (done) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }
}
