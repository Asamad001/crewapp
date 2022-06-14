import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/Icon_button.dart';
import 'package:crew_app/Widgets/button.dart';
import 'package:crew_app/Widgets/clip_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height * 1,
        width: double.infinity,
        child: Stack(
          children: [
            ClipContainer(images.loginimage, Get.height * 0.2, Get.width * 0.04,
                Texts.loginimagetext, 4, Get.width * 0.35),
            iconButton(
                Get.height * 0.73,
                Get.width * 0.18,
                Get.height * 0.06,
                Get.width * 0.66,
                Colors.black,
                'Sign in with Apple',
                Colors.white,
                1,
                images.apple,
                Colors.black,
                () {}),
            iconButton(
                Get.height * 0.81,
                Get.width * 0.18,
                Get.height * 0.06,
                Get.width * 0.66,
                Colors.white,
                'Sign in with Google',
                Colors.black,
                1,
                images.google,
                Colors.black,
                () {}),
            Positioned(
              top: Get.height * 0.9,
              left: Get.width * 0.19,
              child: const Text(
                'Sign up with phone number instead?',
                style: TextStyle(
                    fontFamily: "Roboto", fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
