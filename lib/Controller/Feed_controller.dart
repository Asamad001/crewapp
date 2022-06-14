// ignore_for_file: file_names

import 'dart:async';
import 'dart:io';

import 'package:crew_app/Utils/utils.dart.dart';
import 'package:flutter/cupertino.dart';
import 'package:crew_app/Models/all_models..dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../Screens/Chats Screen/view/ChatsScreen.dart';
import '../Screens/Explore Screen/view/ExploreScreen.dart';
import '../Screens/Feed Screen/view/FeedScreens.dart';
import '../Screens/Profile Screen/view/Profile.dart';

class Feedscreen extends GetxController {
  int currentindex = 0;
  final List<Color> color = [
    const Color(0xff8787FF),
    const Color(0xffF26D21),
    const Color(0xffEE82EE)
  ];
  List image = Get.arguments[0];
  List name = Get.arguments[1];
  final List<Widget> children = [
    FeedsScreen(),
    ExploreScreen(),
    ChatsScreen(),
    ProfileScreen(
      Get.arguments[0],
      Get.arguments[1],
    ),
  ];

  void ontap(int index) {
    currentindex = index;
    update();
  }

  List<FeedStoryimage> storyimages = [
    FeedStoryimage(images.storyimage, "Your crew"),
    FeedStoryimage(images.storyimage1, "Disturbing Lag.."),
    FeedStoryimage(images.storyimage2, "Disturbing Lag.."),
    FeedStoryimage(images.storyimage3, "NDG")
  ];
  List<FeedPost> feedpost = [
    FeedPost(images.profileimage1, "The Adventurers", "2 minutes ago",
        images.feedimage1, images.centreimage1, "", ""),
    FeedPost(
        images.profileimage2,
        "You Never Walk Alone",
        "5 minutes ago",
        images.feedimage2,
        images.centreimage2,
        "We started a new week today!",
        ""),
    FeedPost(
        images.profileimage3,
        "Disturbing Lagos",
        "15 minutes ago",
        images.feedimage3,
        "",
        "The adventure never stops!",
        "#disturbinglagos#uber")
  ];
  void bottom() {
    Get.bottomSheet(
      Container(
        height: Get.height * 0.95,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.32,
                ),
                Container(
                  height: 140,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Divider(
                        thickness: 2,
                        color: Colors.grey.shade200,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 45,
                          child: TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                hintText: "Write a comment...",
                                fillColor: Colors.grey.shade200,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: Get.width * 0.04),
                          IconButton(
                            onPressed: () {
                              getImage();
                            },
                            icon: Icon(Icons.photo_camera_outlined),
                            color: Colors.grey.shade800,
                          ),
                          SizedBox(width: Get.width * 0.03),
                          Container(
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  border:
                                      Border.all(color: Colors.grey.shade800)),
                              child:
                                  FittedBox(child: Icon(Icons.gif_outlined))),
                          SizedBox(width: Get.width * 0.04),
                          Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey.shade800,
                          ),
                          SizedBox(width: Get.width * 0.55),
                          Icon(
                            Icons.send_outlined,
                            color: Colors.grey.shade800,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );

    update();
  }

  var val;
  final imag = ImagePicker();
  Future getImage() async {
    var Image = await imag.getImage(source: ImageSource.gallery);

    val = File(Image!.path);
    update();
  }
}
