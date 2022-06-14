import 'package:crew_app/Screens/Gender%20Registeration/controller/Registergender_controller.dart';
import 'package:crew_app/Route_management/set_route.dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/backbutton.dart';
import 'package:crew_app/Widgets/button.dart';
import 'package:crew_app/Widgets/Text.dart';
import 'package:crew_app/Widgets/BoldText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class RegisterGender extends StatefulWidget {
  @override
  State<RegisterGender> createState() => _RegisterGender();
}

class _RegisterGender extends State<RegisterGender> {
  bool male = false;
  bool female = false;
  bool no = false;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistergenderController>(
        init: RegistergenderController(),
        builder: (controller) {
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
                      controller.Gonextpage(
                          male, female, no, regimage, context);
                    }),
              ),
              backgroundColor: Colors.black,
              body: SingleChildScrollView(
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
                    texts(Texts.Text, Color(0xffEFEFEF)),
                    SizedBox(height: Get.height * 0.058),
                    Row(
                      children: [
                        SizedBox(
                          width: Get.width * 0.05,
                        ),
                        text("What's Your\nGender?", Colors.white)
                      ],
                    ),
                    SizedBox(height: Get.height * 0.08),
                    Row(
                      children: [
                        Expanded(flex: 1, child: SizedBox()),
                        Expanded(
                          flex: 10,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  // checkboxes(
                                  //   Gender: male,
                                  //   gender1: female,
                                  //   gender2: no,
                                  // ),
                                  Checkbox(
                                    side: BorderSide(color: Colors.white),
                                    checkColor: Colors.black,
                                    activeColor: Colors.white,
                                    value: male,
                                    onChanged: (value) {
                                      // controller.checkbox(
                                      //     male, value, female, no);
                                      setState(() {
                                        male = value!;
                                        no = false;
                                        female = false;
                                      });
                                    },
                                  ),
                                  Text(
                                    'Male',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  // checkboxes(
                                  //   Gender: female,
                                  //   gender1: male,
                                  //   gender2: no,
                                  // ),
                                  Checkbox(
                                    side: BorderSide(color: Colors.white),
                                    checkColor: Colors.black,
                                    activeColor: Colors.white,
                                    value: female,
                                    onChanged: (value) {
                                      // controller.checkbox(
                                      //     female, value, male, no);
                                      setState(() {
                                        female = value!;
                                        no = false;
                                        male = false;
                                      });
                                    },
                                  ),
                                  Text(
                                    'Female',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  // checkboxes(
                                  //     Gender: no,
                                  //     gender1: male,
                                  //     gender2: female),
                                  Checkbox(
                                    side: BorderSide(color: Colors.white),
                                    checkColor: Colors.black,
                                    activeColor: Colors.white,
                                    value: no,
                                    onChanged: (value) {
                                      // controller.checkbox(
                                      //     no, value, female, male);
                                      setState(() {
                                        no = value!;
                                        male = false;
                                        female = false;
                                      });
                                    },
                                  ),
                                  Text(
                                    'I prefer not to say',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(flex: 10, child: SizedBox()),
                      ],
                    ),
                  ],
                ),
              ));
        });
  }
}
