import 'package:crew_app/Screens/Select%20Crew%20Screen/controller/SelectCrew_controller.dart';
import 'package:crew_app/Screens/Your%20Interests%20Screen/controller/YourInterest_controller.dart';
import 'package:crew_app/Models/all_models..dart';
import 'package:crew_app/Route_management/set_route.dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/Textfield.dart';
import 'package:crew_app/Widgets/backbutton.dart';
import 'package:crew_app/Widgets/button.dart';

import 'package:crew_app/Widgets/Text.dart';
import 'package:crew_app/Widgets/BoldText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TagScreen extends StatefulWidget {
  @override
  State<TagScreen> createState() => _TagScreenState();
}

class _TagScreenState extends State<TagScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<tagscreen>(
        init: tagscreen(),
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
                      Get.toNamed(findcrew,
                          arguments: [controller.image, controller.name]);
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
                        text('Tell Us Your\ninterests', Colors.black)
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
                    Row(
                      children: [
                        SizedBox(
                          width: Get.width * 0.05,
                        ),
                        Container(
                          height: Get.height * 0.04,
                          width: Get.width * 0.45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 0,
                                  blurRadius: 3,
                                  offset: Offset(0, 5)
                                  // changes position of shadow
                                  ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: Get.height * 0.04,
                                width: Get.width * 0.09,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage(controller.image[0]))),
                              ),
                              SizedBox(width: Get.width * 0.05),
                              Text(
                                controller.name[0],
                                style: TextStyle(
                                    fontSize: Get.width * 0.038,
                                    fontFamily: "Regular"),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.017),
                    Row(
                      children: [
                        SizedBox(
                          width: Get.width * 0.05,
                        ),
                        Text(
                          "Top music artists",
                          style: TextStyle(
                              fontSize: Get.width * 0.035,
                              fontFamily: "Roboto"),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.width * 0.14),
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
                    SizedBox(height: Get.width * 0.02),
                    Container(
                      height: Get.width * 0.9,
                      width: double.infinity,
                      child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount:
                              controller.textEditingController.text.isNotEmpty
                                  ? controller.select.length
                                  : controller.tagslist.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 15,
                                  crossAxisSpacing: 10.0,
                                  childAspectRatio: 1.9,
                                  crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: GestureDetector(
                                onTap: () {
                                  controller.selectcrew(index);
                                },
                                child: Container(
                                  child: Center(
                                      child: FittedBox(
                                          child: Text(
                                    controller.textEditingController.text
                                            .isNotEmpty
                                        ? controller.select[index].tags
                                        : controller.tagslist[index].tags,
                                    style: TextStyle(
                                        fontSize: Get.width * 0.028,
                                        color:
                                            controller.tagslist[index].select ==
                                                    true
                                                ? Colors.white
                                                : Colors.black),
                                  ))),
                                  decoration: BoxDecoration(
                                      color:
                                          controller.tagslist[index].select ==
                                                  true
                                              ? Colors.black
                                              : Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      border: Border.all(
                                          color: Colors.black, width: 2)),
                                ),
                              ),
                            );
                          }),
                    ),
                    Container(
                        height: Get.height * 0.4,
                        width: double.infinity,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemCount: controller.image.length - 1,
                            itemBuilder: (BuildContext context, index) {
                              return Row(
                                children: [
                                  SizedBox(
                                    width: Get.width * 0.04,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: Get.height * 0.05,
                                      width: Get.width * 0.69,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.3),
                                              spreadRadius: 0,
                                              blurRadius: 3,
                                              offset: Offset(0, 5)),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: Get.height * 0.06,
                                            width: Get.width * 0.11,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(controller
                                                        .image[index + 1]))),
                                          ),
                                          SizedBox(width: Get.width * 0.05),
                                          Text(
                                            controller.name[index + 1],
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "Regular"),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: GestureDetector(
                                              onTap: () {
                                                controller.remove(index, index);
                                              },
                                              child: Container(
                                                child: Center(
                                                  child: Text(
                                                    "x",
                                                    style: TextStyle(
                                                        fontSize:
                                                            Get.width * 0.027,
                                                        fontFamily: "Bold"),
                                                  ),
                                                ),
                                                height: 15,
                                                width: 15,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffB6B6B6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            })),
                    SizedBox(
                      height: Get.height * 0.1,
                    )
                  ],
                ),
              ));
        });
  }
}
