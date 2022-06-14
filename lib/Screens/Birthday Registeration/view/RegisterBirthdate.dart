import 'package:crew_app/Screens/Birthday%20Registeration/controller/registerbirthdate_controller.dart';
import 'package:crew_app/Route_management/set_route.dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/Textfield.dart';
import 'package:crew_app/Widgets/backbutton.dart';
import 'package:crew_app/Widgets/button.dart';
import 'package:crew_app/Widgets/Text.dart';
import 'package:crew_app/Widgets/BoldText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterBirthdate extends StatefulWidget {
  const RegisterBirthdate({Key? key}) : super(key: key);

  @override
  State<RegisterBirthdate> createState() => _RegisterBirthdate();
}

class _RegisterBirthdate extends State<RegisterBirthdate> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterBirthController>(
        init: RegisterBirthController(),
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
                      controller.GotoNextpage(regGender, context);
                    }),
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
                      texts(Texts.Text, Color(0xffEFEFEF)),
                      SizedBox(height: Get.height * 0.058),
                      Row(
                        children: [
                          SizedBox(
                            width: Get.width * 0.05,
                          ),
                          text("When's Your\nBirthday?", Colors.white)
                        ],
                      ),
                      SizedBox(height: Get.height * 0.2),
                      Form(
                        key: _formKey,
                        child: Container(
                          height: Get.height * 0.06,
                          width: Get.width * 0.98,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: Get.width * 0.02,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.selectDate(context);
                                    },
                                    child: controller.Textupdate(),
                                  ),
                                ],
                              ),
                              SizedBox(height: Get.height * 0.01),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Divider(
                                  thickness: 1.2,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ));
        });
  }
}
