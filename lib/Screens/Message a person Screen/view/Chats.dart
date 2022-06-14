import 'dart:async';

import 'package:crew_app/Screens/Message%20a%20person%20Screen/controller/chat_screen_controller.dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/backbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  TextEditingController text = TextEditingController();
  bool active = false;
  @override
  function() {
    Timer(Duration(seconds: 1), () {
      setState(() {
        if (text.text.isNotEmpty) {
          active = true;
        } else {
          active = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatsScreenController>(
        init: ChatsScreenController(),
        builder: (controller) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(children: [
                Row(
                  children: [
                    Container(
                      height: Get.height * 0.26,
                      width: Get.width * 1,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(height: Get.height * 0.1),
                          Row(
                            children: [
                              SizedBox(width: Get.width * 0.06),
                              Backbutton(Colors.black12, () {
                                Get.back();
                              }),
                            ],
                          ),
                          SizedBox(height: Get.height * 0.03),
                          Row(
                            children: [
                              SizedBox(width: Get.width * 0.06),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Color(0xffF26D21),
                                          radius: 10,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                height: Get.height * 0.08,
                                width: Get.width * 0.18,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(images.profileimage1),
                                        fit: BoxFit.fill),
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              SizedBox(width: Get.width * 0.02),
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: Get.width * 0.02, top: 5),
                                    child: Text(
                                      "You Never Walk Alone",
                                      style: TextStyle(
                                          fontSize: 14, fontFamily: "Bold"),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: Get.width * 0.48,
                                          top: Get.height * 0.022),
                                      child: Icon(
                                        Icons.videocam_outlined,
                                        size: 30,
                                      )),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: Get.width * 0.57,
                                          top: Get.height * 0.028),
                                      child: Icon(
                                        Icons.call_outlined,
                                        size: 22,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 35, right: 50),
                                    child: Container(
                                      height: Get.height * 0.033,
                                      width: 120,
                                      child: Stack(
                                        overflow: Overflow.visible,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 2),
                                            child: CircleAvatar(
                                              radius: 10,
                                              backgroundImage: AssetImage(
                                                  "assets/images/travel_imag_avatar.png"),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 15),
                                            child: CircleAvatar(
                                                radius: 10,
                                                backgroundImage: AssetImage(
                                                    "assets/images/travel_imag_avatar3.png")),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 30),
                                            child: CircleAvatar(
                                                radius: 10,
                                                backgroundImage: AssetImage(
                                                    "assets/images/travel_imag_avatar1.png")),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 45),
                                            child: CircleAvatar(
                                                radius: 10,
                                                backgroundImage: AssetImage(
                                                    "assets/images/travel_imag_avatar2.png")),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 12, left: 70),
                                              child: Text(
                                                "+3 others",
                                                style: TextStyle(
                                                    fontSize: 8,
                                                    color: Color(0xff636363)),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: Get.height * 0.66,
                      width: Get.width * 1,
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(height: Get.height * 0.05),
                            Row(
                              children: [
                                SizedBox(
                                  width: Get.width * 0.06,
                                ),
                                Container(
                                  height: Get.height * 0.035,
                                  width: Get.width * 0.08,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(images.findcrew3),
                                          fit: BoxFit.cover),
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                SizedBox(
                                  width: Get.width * 0.06,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8.0, left: 15.0),
                                            child: Text(
                                              "Femi",
                                              style: TextStyle(
                                                  color: Color(0xff7549F2),
                                                  fontSize: Get.width * 0.025),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15.0),
                                            child: Text(
                                              "Hey bro... How’s it going? Hope",
                                              style: TextStyle(
                                                  color: Color(0xff585858),
                                                  fontSize: Get.width * 0.036),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  height: Get.height * 0.058,
                                  width: Get.width * 0.58,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 120),
                              child: Text(
                                "Yesterday, 13:01 PM",
                                style: TextStyle(
                                    color: Color(0xffB4B4B4),
                                    fontSize: Get.width * 0.028),
                              ),
                            ),
                            SizedBox(height: Get.height * 0.05),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: Get.width * 0.06,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15.0, top: 15),
                                            child: Text(
                                              "Hey bro... How’s it going? Hope",
                                              style: TextStyle(
                                                  color: Color(0xffFFFFFF),
                                                  fontSize: Get.width * 0.036),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  height: Get.height * 0.058,
                                  width: Get.width * 0.58,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      )),
                                ),
                                SizedBox(
                                  width: Get.width * 0.04,
                                ),
                                Container(
                                  height: Get.height * 0.035,
                                  width: Get.width * 0.08,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(images.profileimage),
                                          fit: BoxFit.cover),
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                SizedBox(
                                  width: Get.width * 0.04,
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, left: 160),
                              child: Text(
                                "Yesterday, 13:01 PM",
                                style: TextStyle(
                                    color: Color(0xffB4B4B4),
                                    fontSize: Get.width * 0.028),
                              ),
                            ),
                            SizedBox(height: Get.height * 0.03),
                            Container(
                              height: 25,
                              width: 50,
                              child: Center(
                                child: Text(
                                  "Today",
                                  style: TextStyle(
                                      color: Color(0xffB4B4B4),
                                      fontSize: Get.width * 0.028),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xffF1F1F1),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.modalBottomSheetMenu(context);
                                    // _modalBottomSheetMenu();
                                  },
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20.0, top: 20),
                                        child: Container(
                                          height: Get.width * 0.25,
                                          width: Get.width * 0.67,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/chat_image.png"),
                                                  fit: BoxFit.cover),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.4),
                                                    blurRadius: 12,
                                                    spreadRadius: 3,
                                                    offset:
                                                        Offset.fromDirection(5))
                                              ],
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight:
                                                      Radius.circular(20))),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Container(
                                          height: Get.width * 0.15,
                                          width: Get.width * 0.67,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                  height: Get.width * 0.02),
                                              Row(
                                                children: [
                                                  SizedBox(width: 10),
                                                  Text(
                                                    "LA Campagne Tropicana Beach Resort",
                                                    style: TextStyle(
                                                        fontSize:
                                                            Get.width * 0.034),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                      width: Get.width * 0.028),
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    size: 14,
                                                    color: Color(0xff585858),
                                                  ),
                                                  Text(
                                                    "Lekki, Nigeria",
                                                    style: TextStyle(
                                                        fontSize:
                                                            Get.width * 0.028,
                                                        color:
                                                            Color(0xff585858)),
                                                  ),
                                                  SizedBox(
                                                      width: Get.width * 0.028),
                                                  Text(
                                                    "14km away",
                                                    style: TextStyle(
                                                        fontSize:
                                                            Get.width * 0.028,
                                                        color:
                                                            Color(0xff585858)),
                                                  ),
                                                  SizedBox(
                                                      width: Get.width * 0.028),
                                                  Text(
                                                    "See more",
                                                    style: TextStyle(
                                                        fontSize:
                                                            Get.width * 0.028,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        color:
                                                            Color(0xff585858)),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.4),
                                                    blurRadius: 12,
                                                    spreadRadius: 3,
                                                    offset:
                                                        Offset.fromDirection(5))
                                              ],
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20))),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 3, top: 20),
                                  child: CircleAvatar(
                                    radius: 4,
                                    backgroundColor: Color(0xff8C67F4),
                                  ),
                                ),
                                SizedBox(
                                  width: Get.width * 0.02,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(
                                    height: Get.height * 0.035,
                                    width: Get.width * 0.08,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage(images.profileimage),
                                            fit: BoxFit.cover),
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, left: 170),
                              child: Text(
                                "13:01 PM",
                                style: TextStyle(
                                    color: Color(0xffB4B4B4),
                                    fontSize: Get.width * 0.028),
                              ),
                            ),
                            SizedBox(height: Get.height * 0.03),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: Get.width * 0.06,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15.0, top: 15),
                                            child: Text(
                                              "Guys what do we think?",
                                              style: TextStyle(
                                                  color: Color(0xffFFFFFF),
                                                  fontSize: Get.width * 0.036),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  height: Get.height * 0.058,
                                  width: Get.width * 0.58,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      )),
                                ),
                                SizedBox(
                                  width: Get.width * 0.04,
                                ),
                                Container(
                                  height: Get.height * 0.035,
                                  width: Get.width * 0.08,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(images.profileimage),
                                          fit: BoxFit.cover),
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                SizedBox(
                                  width: Get.width * 0.04,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 10, left: Get.width * 0.42),
                              child: Text(
                                "Yesterday, 13:01 PM",
                                style: TextStyle(
                                    color: Color(0xffB4B4B4),
                                    fontSize: Get.width * 0.028),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: Get.height * 0.075,
                      width: Get.width * 1,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8, top: 8),
                            child: Icon(Icons.add),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            child: Container(
                              child: TextField(
                                onChanged: function(),
                                controller: text,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(10),
                                    hintStyle: TextStyle(
                                        fontSize: Get.width * 0.034,
                                        color: Color(0xff888888)),
                                    hintText: "Say something...",
                                    filled: true,
                                    fillColor: Color(0xffEAEAEA),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                              height: Get.height * 0.075,
                              width: Get.width * 0.7,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          Icon(
                            Icons.insert_drive_file_outlined,
                            color: Color(0xff585858),
                          ),
                          active
                              ? Icon(
                                  Icons.send_rounded,
                                  color: Colors.black,
                                )
                              : Icon(
                                  Icons.keyboard_voice_outlined,
                                  color: Color(0xff585858),
                                )
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          );
        });
  }
}
