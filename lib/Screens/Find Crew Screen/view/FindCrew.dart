import 'package:crew_app/Screens/Find%20Crew%20Screen/controller/Findcrew_controller.dart';
import 'package:crew_app/Screens/Select%20Crew%20Screen/controller/SelectCrew_controller.dart';
import 'package:crew_app/Route_management/set_route.dart';
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

class FindCrew extends StatefulWidget {
  @override
  State<FindCrew> createState() => _FindCrewState();
}

class _FindCrewState extends State<FindCrew> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FindsCrews>(
        init: FindsCrews(),
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
                      controller.Gonextpage(navigationbar);
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
                        text('Find Your Crew', Colors.black)
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
                            fontSize: 12,
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
                    Stack(
                      children: [
                        Container(
                          height: Get.width * 2.3,
                          width: double.infinity,
                          child: GridView.builder(
                              scrollDirection: Axis.vertical,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller
                                      .textEditingController.text.isNotEmpty
                                  ? controller.select.length
                                  : controller.findcrewlist.length,
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
                                          controller.selectcrew(index);
                                        },
                                        child: CrewContainer(
                                            border: controller
                                                        .findcrewlist[index]
                                                        .selected ==
                                                    true
                                                ? Border.all(
                                                    color: Color(0xffFF3C5E),
                                                    width: 2)
                                                : Border.all(
                                                    color: Colors.transparent),
                                            image: controller
                                                    .textEditingController
                                                    .text
                                                    .isNotEmpty
                                                ? controller.select[index].image
                                                : controller.findcrewlist[index]
                                                    .image)),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              controller.textEditingController
                                                      .text.isNotEmpty
                                                  ? controller
                                                      .select[index].Name
                                                  : controller
                                                      .findcrewlist[index].Name,
                                              style: TextStyle(
                                                  fontSize: Get.width * 0.038,
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
                      ],
                    ),
                  ],
                ),
              ));
        });
  }
}
