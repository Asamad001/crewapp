import 'dart:async';
import 'dart:ui';

import 'package:crew_app/Models/all_models..dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crew_app/Utils/utils.dart.dart';

class ChatsScreenController extends GetxController {
  List<votes> member = [
    votes(images.findcrew3, const Color(0xff00C851), "I’m Down"),
    votes(images.findcrew4, const Color(0xff00C851), "Nahh"),
    votes(images.findcrew5, const Color(0xff00C851), "I’m Down"),
    votes(images.findcrew6, const Color(0xff888888), "Not Online"),
  ];
  void modalBottomSheetMenu(dynamic context) {
    showModalBottomSheet(
        enableDrag: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (builder) {
          return GetBuilder<ChatsScreenController>(
              init: ChatsScreenController(),
              builder: (controller) {
                return Container(
                  height: Get.height * 0.45,
                  child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Get.height * 0.035,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: Get.width * 0.03,
                              ),
                              Container(
                                height: Get.height * 0.08,
                                width: Get.width * 0.4,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/chat_image.png"),
                                        fit: BoxFit.cover)),
                              ),
                              // const SizedBox(width: 5),
                              Stack(
                                children: [
                                  Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child: Container(
                                        child: FittedBox(
                                          child: Text(
                                            "LA Campagne Tropicana Beach\nResort",
                                            style: TextStyle(
                                                fontSize: Get.width * 0.05),
                                          ),
                                        ),
                                        height: Get.height * 0.05,
                                        width: Get.width * 0.5,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 35),
                                    child: Row(
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(top: 5),
                                            height: Get.width * 0.06,
                                            width: Get.width * 0.07,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.1),
                                                      blurRadius: 5,
                                                      spreadRadius: 2,
                                                      offset:
                                                          Offset.fromDirection(
                                                              0))
                                                ],
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Center(
                                                child: Text(
                                              "4.9",
                                              style: TextStyle(
                                                  fontSize: Get.width * 0.025),
                                            ))),
                                        const SizedBox(width: 10),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text(
                                            "Rating",
                                            style: TextStyle(
                                                fontSize: 8,
                                                fontFamily: "Regular",
                                                color: Color(0xff636363)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(
                                width: Get.width * 0.09,
                              ),
                              Icon(
                                Icons.location_on_outlined,
                                size: 14,
                                color: Color(0xff585858),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Lekki, Nigeria",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff585858)),
                              ),
                              SizedBox(width: 5),
                              Text(
                                ".",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff585858)),
                              ),
                              SizedBox(width: 3),
                              Icon(
                                Icons.calendar_today_outlined,
                                size: 12,
                                color: Color(0xff585858),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "5, Feb 2021",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff585858)),
                              ),
                              SizedBox(width: 5),
                              Text(
                                ".",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff585858)),
                              ),
                              SizedBox(width: 3),
                              Icon(
                                Icons.access_time_outlined,
                                size: 12,
                                color: Color(0xff585858),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "5:30pm",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff585858)),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              SizedBox(
                                width: Get.width * 0.09,
                              ),
                              Text(
                                "Votes",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff131313),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "SemiBold"),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "5/8",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xff585858)),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Row(
                                children: List.generate(
                                    controller.member.length, (index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: Get.height * 0.09,
                                          width: Get.width * 0.20,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(controller
                                                      .member[index].image),
                                                  fit: BoxFit.cover),
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: Get.height * 0.075,
                                              left: Get.width * 0.17),
                                          child: CircleAvatar(
                                            backgroundColor:
                                                controller.member[index].color,
                                            radius: 7,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: Get.height * 0.04,
                                              left: Get.width * 0.04),
                                          child: Text(
                                              controller.member[index].text,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white)),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Get.height * 0.045,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: Get.height * 0.045,
                                width: Get.width * 0.33,
                                child: Center(
                                  child: Text("Set hangout",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white)),
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xff878787),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Container(
                                height: Get.height * 0.045,
                                width: Get.width * 0.33,
                                child: Center(
                                  child: Text("Delete",
                                      style: TextStyle(fontSize: 14)),
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ],
                          )
                        ],
                      )),
                );
              });
        });
  }
}
