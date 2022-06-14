import 'package:crew_app/Route_management/set_route.dart';
import 'package:crew_app/Widgets/Textfield.dart';

import 'package:crew_app/Widgets/backbutton.dart';
import 'package:crew_app/Widgets/button.dart';
import 'package:crew_app/Widgets/Text.dart';
import 'package:crew_app/Widgets/BoldText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterTalkAbout extends StatefulWidget {
  const RegisterTalkAbout({Key? key}) : super(key: key);

  @override
  State<RegisterTalkAbout> createState() => _RegisterTalkAbout();
}

class _RegisterTalkAbout extends State<RegisterTalkAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Padding(
          padding: EdgeInsets.only(right: Get.width * 0.055),
          child: Button(
              top: Get.height * 0.02,
              left: Get.width * 0.06,
              buttonheight: Get.height * 0.06,
              buttonwidth: Get.width * 0.75,
              Buttoncolor: Colors.white,
              text: "Continue",
              textcolor: Colors.black,
              onpressed: () {
                Get.toNamed(selectcrew);
              }),
          // child: Button(Get.height * 0.02, Get.width * 0.04, Get.height * 0.06,
          //     Get.width * 0.75, Colors.white, 'Continue', Colors.black, () {
          //   Get.toNamed(selectcrew);
          // }),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          reverse: true,
          child: Container(
            height: Get.height * 0.75,
            width: Get.width * 1,
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.09),
                Row(
                  children: [
                    SizedBox(
                      width: Get.width * 0.05,
                    ),
                    Backbutton(Colors.black12, () {
                      Get.back();
                    }),
                  ],
                ),
                SizedBox(height: Get.height * 0.033),
                texts("👋 Hello,\nLet’s help you be less socially awkward",
                    Color(0xffEFEFEF)),
                SizedBox(height: Get.height * 0.058),
                Row(
                  children: [
                    SizedBox(
                      width: Get.width * 0.05,
                    ),
                    Column(
                      children: [
                        text("Talk About Yourself", Colors.white),
                        Row(
                          children: [
                            text("For A Bit", Colors.white),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 45),
                              child: texts("...or later?", Color(0xffFFD93B)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: Get.height * 0.2),
                textField(
                  readonly: false,
                  hinttext: "Please try to keep it brief",
                  underline: Colors.white,
                  focusborder: Colors.white,
                  keyboardType: TextInputType.name,
                  textcolor: Colors.white,
                )
              ],
            ),
          ),
        ));
  }
}
