import 'dart:io';
import 'dart:async';

import 'package:crew_app/Screens/Image%20Registeration/controller/Registerimage_controller.dart';
import 'package:crew_app/Route_management/set_route.dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/backbutton.dart';
import 'package:crew_app/Widgets/button.dart';
import 'package:crew_app/Widgets/Text.dart';
import 'package:crew_app/Widgets/BoldText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class RegisterImage extends StatefulWidget {
  @override
  State<RegisterImage> createState() => _RegisterImage();
}

class _RegisterImage extends State<RegisterImage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterimageController>(
        init: RegisterimageController(),
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
                      controller.Gonextpage(regtalkabout, context);
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
                        Column(
                          children: [
                            text("Show Off Your", Colors.white),
                            Row(
                              children: [
                                text("Looks", Colors.white),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, right: 20),
                                  child:
                                      texts("...or later?", Color(0xffFFD93B)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.07),
                    controller.image == null
                        ? Container(
                            height: Get.height * 0.22,
                            width: Get.width * 0.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      controller.getImage();
                                    },
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      color: Colors.transparent,
                                    ))
                              ],
                            ),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/ImageIcon.png"),
                                    fit: BoxFit.cover)),
                          )
                        : Container(
                            height: Get.height * 0.22,
                            width: Get.width * 0.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.file(
                                controller.image!,
                                fit: BoxFit.cover,
                              ),
                            )),
                  ],
                ),
              ));
        });
  }
}
