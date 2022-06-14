import 'package:crew_app/Screens/Name%20Registeration/controller/Registername_controller.dart';
import 'package:crew_app/Route_management/set_route.dart';
import 'package:crew_app/Widgets/Textfield.dart';

import 'package:crew_app/Widgets/backbutton.dart';
import 'package:crew_app/Widgets/button.dart';
import 'package:crew_app/Widgets/Text.dart';
import 'package:crew_app/Widgets/BoldText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterName extends StatefulWidget {
  const RegisterName({Key? key}) : super(key: key);

  @override
  State<RegisterName> createState() => _RegisterName();
}

class _RegisterName extends State<RegisterName> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterNameController>(
        init: RegisterNameController(),
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
                      controller.Gonextpage(_formKey, regbirthdate, context);
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
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.033),
                      texts(
                          "👋 Hello,\nLet’s help you be less socially awkward",
                          Color(0xffEFEFEF)),
                      SizedBox(height: Get.height * 0.058),
                      Row(
                        children: [
                          SizedBox(
                            width: Get.width * 0.05,
                          ),
                          text("Tell Us Your\nName", Colors.white)
                        ],
                      ),
                      SizedBox(height: Get.height * 0.2),
                      Form(
                        key: _formKey,
                        child: textField(
                          readonly: false,
                          controller: controller.name,
                          validation: (value) {
                            // controller.validation(value);
                            if (!RegExp(
                                    r'^([a-zA-Z]{1,}\s[a-zA-Z]{1,}?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)')
                                .hasMatch(value!)) {
                              return "Please Enter Your Name";
                            }
                          },
                          hinttext: "What Do You Want People To Call You ?",
                          underline: Colors.white,
                          focusborder: Colors.white,
                          keyboardType: TextInputType.name,
                          textcolor: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ));
        });
  }
}
