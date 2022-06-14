import 'dart:async';

import 'package:crew_app/Screens/Code%20verification%20Screen/controller/code_verify_controller.dart';
import 'package:crew_app/Route_management/set_route.dart';
import 'package:crew_app/Screens/Code%20verification%20Screen/widgets/pintheme.dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/backbutton.dart';
import 'package:crew_app/Widgets/button.dart';
import 'package:crew_app/Widgets/Text.dart';
import 'package:crew_app/Widgets/BoldText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:pinput/pinput.dart';

class CodeVerify extends StatefulWidget {
  const CodeVerify({Key? key}) : super(key: key);

  @override
  State<CodeVerify> createState() => _CodeVerify();
}

class _CodeVerify extends State<CodeVerify> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CodeverifyController>(
        init: CodeverifyController(),
        builder: (controller) {
          return Scaffold(
              floatingActionButton: Padding(
                padding: EdgeInsets.only(right: Get.width * 0.055),
                child: Button(
                    top: Get.height * 0.02,
                    left: Get.width * 0.06,
                    buttonheight: Get.height * 0.06,
                    buttonwidth: Get.width * 0.75,
                    Buttoncolor: controller.Buttoncolor(),
                    text: "Continue",
                    textcolor: controller.Textcolor(),
                    onpressed: () {
                      controller.Gonextpage(regName, context);
                    }),
              ),
              body: SingleChildScrollView(
                reverse: true,
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
                    texts(Texts.Text, colors.color),
                    SizedBox(height: Get.height * 0.058),
                    Row(
                      children: [
                        SizedBox(
                          width: Get.width * 0.05,
                        ),
                        text('Your Code Is..', Colors.black)
                      ],
                    ),
                    SizedBox(height: Get.height * 0.07),
                    Row(
                      children: [
                        SizedBox(width: Get.width * 0.06),
                        Pinput(
                          keyboardType: TextInputType.phone,
                          onChanged: controller.function(),
                          controller: controller.value,
                          autofocus: true,
                          separator: SizedBox(
                            width: 15,
                          ),
                          length: 4,
                          followingPinTheme: Themes.defaultpintheme,
                          disabledPinTheme: Themes.defaultpintheme,
                          focusedPinTheme: Themes.defaultpintheme,
                          submittedPinTheme: Themes.defaultpintheme,
                        )
                      ],
                    ),
                    SizedBox(height: Get.height * 0.065),
                    Row(
                      children: [
                        SizedBox(
                          width: Get.width * 0.08,
                        ),
                        Text(
                          'You didn’t get the code? Don’t be alarmed',
                          style: TextStyle(
                              fontFamily: 'Regular',
                              fontWeight: FontWeight.w600,
                              fontSize: Get.width * 0.032,

                              // 12,
                              color: Color.fromARGB(136, 136, 136, 136)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: Get.width * 0.04,
                        ),
                        MaterialButton(
                          onPressed: null,
                          child: Text(
                            'Re-send',
                            style: TextStyle(
                                fontFamily: 'Regular',
                                fontWeight: FontWeight.w600,
                                fontSize: Get.width * 0.032,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.07,
                    ),
                  ],
                ),
              ));
        });
  }
}
