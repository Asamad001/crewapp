import 'package:crew_app/Screens/Phone%20verification%20Screen/controller/phone_verify_controller.dart';
import 'package:crew_app/Route_management/set_route.dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/backbutton.dart';
import 'package:crew_app/Widgets/button.dart';
import 'package:crew_app/Widgets/Text.dart';
import 'package:crew_app/Widgets/BoldText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PhoneverifyController>(
        init: PhoneverifyController(),
        builder: (controller) {
          return Scaffold(
              floatingActionButton: Padding(
                padding: EdgeInsets.only(right: Get.width * 0.055),
                child: Button(
                    top: Get.height * 0.02,
                    left: Get.width * 0.06,
                    buttonheight: Get.height * 0.06,
                    buttonwidth: Get.width * 0.75,
                    Buttoncolor:
                        controller.done ? Colors.black : Colors.grey.shade100,
                    text: "Continue",
                    textcolor: controller.done ? Colors.white : Colors.black,
                    onpressed: () {
                      controller.Gonextpage(_formKey, verify, context);
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
                        text('Type In Your\nDigits', Colors.black)
                      ],
                    ),
                    SizedBox(height: Get.height * 0.17),
                    Row(
                      children: [
                        SizedBox(
                          width: Get.width * 0.08,
                        ),
                        Form(
                          key: _formKey,
                          child: Container(
                            height: Get.height * 0.1,
                            width: Get.width * 0.8,
                            child: IntlPhoneField(
                                style: TextStyle(
                                    fontFamily: "SemiBold",
                                    fontWeight: FontWeight.w500),
                                controller: controller.value,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 2),
                                  hintStyle: TextStyle(
                                      fontFamily: "Regular",
                                      fontWeight: FontWeight.w400),
                                  hintText: 'Phone Number',
                                ),
                                initialCountryCode: 'PK',
                                onChanged: controller.verify()),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.1)
                  ],
                ),
              ));
        });
  }
}
