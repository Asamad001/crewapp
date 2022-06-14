import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class Themes {
  static final defaultpintheme = PinTheme(
      height: Get.height * 0.09,
      width: Get.width * 0.138,
      textStyle:
          TextStyle(fontSize: Get.width * 0.08, fontWeight: FontWeight.bold),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          border: Border.all(color: Color(0xffE6E6E6), width: 1)));
}
