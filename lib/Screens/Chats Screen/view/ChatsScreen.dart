import 'package:crew_app/Screens/Chats%20Screen/controller/chats_controller.dart';
import 'package:crew_app/Route_management/set_route.dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/backbutton.dart';
import 'package:crew_app/Widgets/BoldText.dart';
import 'package:crew_app/Widgets/notification_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatsController>(
        init: ChatsController(),
        builder: (controller) {
          return Scaffold(
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: Get.height * 0.1),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.06),
                      Backbutton(Colors.black12, () {
                        Get.back();
                      }),
                      SizedBox(
                        width: Get.width * 0.6,
                      ),
                      NotificationButton(
                        height: Get.width * 0.08,
                        width: Get.width * 0.09,
                        onpressed: () {},
                      )
                    ],
                  ),
                  SizedBox(height: Get.height * 0.03),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.06),
                      text('Chats', Colors.black),
                      SizedBox(
                        width: Get.width * 0.55,
                      ),
                      Icon(
                        Icons.search_outlined,
                        size: 30,
                      )
                    ],
                  ),
                  SizedBox(height: Get.height * 0.03),
                  Container(
                      height: Get.height * 0.7,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.Chats.length,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: GestureDetector(
                                onTap: () {
                                  controller.Gonextpage(index, chat);
                                },
                                child: ListTile(
                                  leading: Stack(
                                    children: [
                                      Container(
                                        height: Get.height * 0.06,
                                        width: Get.width * 0.14,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(controller
                                                    .Chats[index].image),
                                                fit: BoxFit.fill),
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                      controller.Chats[index].crew == "crew"
                                          ? Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 27, left: 33),
                                              child: CircleAvatar(
                                                backgroundColor:
                                                    Color(0xffF26D21),
                                                radius: 10,
                                              ),
                                            )
                                          : SizedBox(),
                                    ],
                                  ),
                                  title: Stack(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Text(
                                              controller.Chats[index].title,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: "Bold",
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: Get.width * 0.01),
                                          controller.Chats[index].crew == "crew"
                                              ? Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 13),
                                                  child: Text(
                                                    "crew",
                                                    style: TextStyle(
                                                        fontSize: 8,
                                                        fontFamily: "SemiBold",
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                )
                                              : SizedBox(
                                                  width: Get.width * 0.1),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: Get.width * 0.58),
                                        child: Text(
                                          controller.Chats[index].time,
                                          style: TextStyle(
                                              color: Color(0xff888888),
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                  subtitle: Stack(
                                    children: [
                                      Row(
                                        children: [
                                          RichText(
                                              text: TextSpan(
                                                  text: controller
                                                              .Chats[index].crew
                                                              .toString() ==
                                                          "crew"
                                                      ? "Mike: "
                                                      : "",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: 12),
                                                  children: [
                                                TextSpan(
                                                  text: controller
                                                      .Chats[index].subtitle,
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                )
                                              ])),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.6),
                                        child: controller
                                                .Chats[index].message.isNotEmpty
                                            ? Container(
                                                height: Get.height * 0.03,
                                                width: Get.width * 0.07,
                                                child: Center(
                                                  child: Text(
                                                    controller
                                                        .Chats[index].message,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 10),
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color: Colors.black,
                                                ),
                                              )
                                            : SizedBox(),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })),
                ],
              ),
            ),
          );
        });
  }
}
