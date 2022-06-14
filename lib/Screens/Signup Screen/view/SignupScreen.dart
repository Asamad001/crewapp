import 'package:crew_app/Route_management/set_route.dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/Icon_button.dart';

import 'package:crew_app/Widgets/clip_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _Signup();
}

class _Signup extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height * 1,
        width: double.infinity,
        child: Stack(
          children: [
            ClipContainer(images.GetStartimage, Get.height * 0.48, 0,
                Texts.Getstartimagetext, 4, Get.width * 0.35),
            iconButton(
                Get.height * 0.73,
                Get.width * 0.18,
                Get.height * 0.06,
                Get.width * 0.66,
                Colors.black,
                'Sign up with Apple',
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
                'Sign up with Google',
                Colors.black,
                1,
                images.google,
                Colors.black, () {
              Get.toNamed(register);
            }),
            Positioned(
              top: Get.height * 0.9,
              left: Get.width * 0.19,
              child: Text(
                'Sign up with phone number instead?',
                style: TextStyle(
                    fontSize: Get.width * 0.04,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
