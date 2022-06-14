import 'package:crew_app/Route_management/set_route.dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/button.dart';
import 'package:crew_app/Widgets/clip_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStart extends StatefulWidget {
  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: Get.width * 2.1,
          width: double.infinity,
          child: Stack(
            children: [
              ClipContainer(images.GetStartimage, Get.height * 0.48, 0,
                  Texts.Getstartimagetext, 4, Get.width * 0.35),
              Positioned(
                top: Get.height * 0.67,
                left: Get.width * 0.2,
                child: Text(
                  Texts.Getstarttitle,
                  style: TextStyle(
                    fontSize: Get.width * 0.037,
                    fontFamily: "Bold",
                  ),
                ),
              ),
              Button(
                  top: Get.height * 0.77,
                  left: Get.width * 0.18,
                  buttonheight: Get.height * 0.06,
                  buttonwidth: Get.width * 0.66,
                  Buttoncolor: Colors.black,
                  text: "Get Started",
                  textcolor: Colors.white,
                  onpressed: () {
                    Get.toNamed(singup);
                  }),
              Button(
                  top: Get.height * 0.84,
                  left: Get.width * 0.18,
                  buttonheight: Get.height * 0.06,
                  buttonwidth: Get.width * 0.66,
                  Buttoncolor: Colors.transparent,
                  text: "Sign in",
                  textcolor: Colors.black,
                  onpressed: () {
                    Get.toNamed(singin);
                  }),
              // Button(
              //     Get.height * 0.77,
              //     Get.width * 0.18,
              //     Get.width * 0.12,
              //     Get.width * 0.66,
              //     Colors.black,
              //     'Get Started',
              //     Colors.white, () {
              //   Get.toNamed(singup);
              // }),
              // Button(
              //     Get.height * 0.84,
              //     Get.width * 0.18,
              //     Get.width * 0.12,
              //     Get.width * 0.66,
              //     Colors.transparent,
              //     'Sign in',
              //     Colors.black, () {
              //   Get.toNamed(singin);
              // }),
            ],
          ),
        ),
      ),
    );
  }
}
