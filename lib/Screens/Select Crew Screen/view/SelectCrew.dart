import 'package:crew_app/Screens/Select%20Crew%20Screen/controller/SelectCrew_controller.dart';
import 'package:crew_app/Models/all_models..dart';
import 'package:crew_app/Route_management/set_route.dart';
import 'package:crew_app/Screens/Your%20Interests%20Screen/view/YourInterest.dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/Textfield.dart';
import 'package:crew_app/Widgets/backbutton.dart';
import 'package:crew_app/Widgets/button.dart';

import 'package:crew_app/Widgets/Text.dart';
import 'package:crew_app/Widgets/BoldText.dart';
import 'package:crew_app/Widgets/crew_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectCrew extends StatefulWidget {
  @override
  State<SelectCrew> createState() => _SelectCrewState();
}

class _SelectCrewState extends State<SelectCrew> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectedCrew>(
        init: SelectedCrew(),
        builder: (controller) {
          return Scaffold(
              floatingActionButton: Padding(
                padding: EdgeInsets.only(right: Get.width * 0.055),
                child: Button(
                    top: Get.height * 0.02,
                    left: Get.width * 0.06,
                    buttonheight: Get.height * 0.06,
                    buttonwidth: Get.width * 0.75,
                    Buttoncolor: Colors.black,
                    text: "Continue",
                    textcolor: Colors.white,
                    onpressed: () {
                      controller.Gonextpage(tags, context);
                    }),
              ),
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
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
                    texts(Texts.Text1, colors.color),
                    SizedBox(height: Get.height * 0.058),
                    Row(
                      children: [
                        SizedBox(
                          width: Get.width * 0.05,
                        ),
                        text('Choose What\nYou love', Colors.black)
                      ],
                    ),
                    SizedBox(height: Get.height * 0.03),
                    Row(
                      children: [
                        SizedBox(
                          width: Get.width * 0.05,
                        ),
                        Text(
                          "Select at least three from the list",
                          style: TextStyle(
                            fontSize: Get.width * 0.035,
                            fontFamily: "Medium",
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: Get.height * 0.06),
                    textField(
                      controller: controller.textEditingController,
                      readonly: false,
                      hinttext: "What do you love to do?",
                      textcolor: Color(0xffB6B6B6),
                      focusborder: Color(0xffB6B6B6),
                      underline: Color(0xffB6B6B6),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (Value) {
                        controller.Searching(Value);
                      },
                    ),
                    Container(
                      height: Get.width * 2.2,
                      width: double.infinity,
                      child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount:
                              controller.textEditingController.text.isNotEmpty
                                  ? controller.selects.length
                                  : controller.crewlist.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 15,
                                  crossAxisSpacing: 10.0,
                                  childAspectRatio: 1,
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            return Stack(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.selectcrew(
                                        index,
                                        controller.crewlist[index].Name,
                                        controller.crewlist[index].image);
                                  },
                                  child: CrewContainer(
                                      border:
                                          controller.crewlist[index].selected ==
                                                  true
                                              ? Border.all(
                                                  color: Color(0xffFF3C5E),
                                                  width: 2)
                                              : Border.all(
                                                  color: Colors.transparent),
                                      image: controller.textEditingController
                                              .text.isNotEmpty
                                          ? controller.selects[index].image
                                          : controller.crewlist[index].image),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          controller.textEditingController.text
                                                  .isNotEmpty
                                              ? controller.selects[index].Name
                                              : controller.crewlist[index].Name,
                                          style: TextStyle(
                                              fontSize: Get.width * 0.04,
                                              fontFamily: "Regular"),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            );
                          }),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Text(
                      "You’ve reached the end 🎉",
                      style: TextStyle(
                          color: Color(0xffA3A3A3),
                          fontSize: Get.width * 0.035),
                    ),
                    SizedBox(
                      height: Get.height * 0.1,
                    ),
                  ],
                ),
              ));
        });
  }
}
