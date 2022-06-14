import 'package:crew_app/Controller/Feed_controller.dart';
import 'package:crew_app/Route_management/set_route.dart';

import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/BoldText.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';

class FeedsScreen extends StatefulWidget {
  const FeedsScreen({Key? key}) : super(key: key);

  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Feedscreen>(
      init: Feedscreen(),
      builder: ((controller) {
        return Scaffold(
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: Get.height * 0.1),
                Row(
                  children: [
                    SizedBox(width: Get.width * 0.06),
                    text('Feed', Colors.black),
                    SizedBox(
                      width: Get.width * 0.6,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(feedAdd);
                          },
                          child: Container(
                              margin: EdgeInsets.only(top: 5),
                              height: Get.width * 0.08,
                              width: Get.width * 0.09,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.1),
                                        blurRadius: 5,
                                        spreadRadius: 2,
                                        offset: Offset.fromDirection(0))
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(Icons.add)),
                        ),
                        Text(
                          "add",
                          style: TextStyle(
                              fontSize: Get.width * 0.027,
                              fontFamily: "Regular"),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: Get.height * 0.07),
                Column(
                  children: [
                    Container(
                        height: Get.height * 0.17,
                        width: double.infinity,
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.storyimages.length,
                            itemBuilder: (BuildContext context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, bottom: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: Get.height * 0.1,
                                          width: Get.width * 0.25,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(colors: [
                                                Colors.pink.shade300,
                                                Colors.pink.shade200,
                                                Colors.purple
                                              ]),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Container(
                                            margin: EdgeInsets.all(2),
                                            height: Get.height * 0.09,
                                            width: Get.width * 0.23,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(controller
                                                        .storyimages[index]
                                                        .image),
                                                    fit: BoxFit.cover),
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(controller.storyimages[index].name)
                                  ],
                                ),
                              );
                            })),
                  ],
                ),
                Container(
                  height: Get.width * 4.3,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.feedpost.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 40),
                          child: Container(
                            height: Get.height * 0.6,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 5,
                                      spreadRadius: 1,
                                      offset: Offset.fromDirection(40))
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                SizedBox(height: Get.height * 0.02),
                                Row(
                                  children: [
                                    SizedBox(width: Get.width * 0.08),
                                    Stack(
                                      children: [
                                        Container(
                                          height: Get.width * 0.125,
                                          width: Get.width * 0.14,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(controller
                                                      .feedpost[index]
                                                      .profileimage),
                                                  fit: BoxFit.cover),
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: Get.width * 0.07,
                                              left: Get.width * 0.09),
                                          child: CircleAvatar(
                                            backgroundColor:
                                                controller.color[index],
                                            radius: Get.width * 0.03,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: Get.width * 0.02),
                                    Column(
                                      children: [
                                        Text(
                                          controller
                                              .feedpost[index].profilename,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: "Regular"),
                                        ),
                                        SizedBox(height: Get.height * 0.01),
                                        Padding(
                                          padding: EdgeInsets.only(right: 28),
                                          child: Text(
                                            controller.feedpost[index].posttime,
                                            style: TextStyle(
                                                fontSize: Get.width * 0.034,
                                                fontFamily: "Regular",
                                                color: Color(0xff878787)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: Get.width * 0.01),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 27),
                                      child: Text(
                                        "crew",
                                        style: TextStyle(
                                            fontSize: Get.width * 0.023,
                                            fontFamily: "Regular"),
                                      ),
                                    ),
                                    SizedBox(width: Get.width * 0.15),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: Icon(
                                        Icons.more_vert,
                                        size: 20,
                                        color: Color(0xff888888),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: Get.height * 0.03),
                                Container(
                                  height: Get.width * 0.6,
                                  width: Get.width * 0.7,
                                  child: Center(
                                    child: controller
                                            .feedpost[index].centreimage.isEmpty
                                        ? SizedBox()
                                        : Image.asset(
                                            controller
                                                .feedpost[index].centreimage,
                                            color:
                                                Colors.pink.withOpacity(0.4)),
                                  ),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(controller
                                              .feedpost[index].Feedimage),
                                          fit: BoxFit.cover),
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                SizedBox(height: Get.height * 0.035),
                                Row(
                                  children: [
                                    SizedBox(width: Get.width * 0.09),
                                    LikeButton(
                                      likeBuilder: (bool like) {
                                        return like
                                            ? Icon(
                                                Icons.favorite_rounded,
                                                color: Color(0xffFF4444),
                                                size: 27,
                                              )
                                            : Icon(
                                                Icons.favorite_outline_rounded,
                                                color: Color(0xff131313),
                                                size: 27,
                                              );
                                      },
                                      bubblesColor: BubblesColor(
                                          dotPrimaryColor: Colors.white,
                                          dotSecondaryColor: Colors.white),
                                      animationDuration:
                                          Duration(microseconds: 2),
                                    ),
                                    SizedBox(width: Get.width * 0.07),
                                    GestureDetector(
                                      onTap: () {
                                        // controller.bottomsheetss;
                                        controller.bottom();
                                      },
                                      child: Image.asset(
                                        "assets/images/chat_icon.png",
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(width: Get.width * 0.09),
                                    Column(
                                      children: [
                                        Text(
                                          "20k",
                                          style: TextStyle(
                                              fontSize: Get.width * 0.045,
                                              fontFamily: "Bold",
                                              color: Color(0xff878787)),
                                        ),
                                        Text(
                                          "likes",
                                          style: TextStyle(
                                              fontSize: Get.width * 0.03,
                                              fontFamily: "SemiBold",
                                              color: Color(0xff878787)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: Get.width * 0.09),
                                    Column(
                                      children: [
                                        Text(
                                          "15",
                                          style: TextStyle(
                                              fontSize: Get.width * 0.045,
                                              fontFamily: "Bold",
                                              color: Color(0xff878787)),
                                        ),
                                        Text(
                                          "comment",
                                          style: TextStyle(
                                              fontSize: Get.width * 0.03,
                                              fontFamily: "SemiBold",
                                              color: Color(0xff878787)),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: Get.width * 0.09),
                                    Container(
                                      height: Get.height * 0.03,
                                      width: Get.width * 0.06,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/send_icon.png"),
                                        fit: BoxFit.contain,
                                      )),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 34),
                                Row(
                                  children: [
                                    SizedBox(width: Get.width * 0.09),
                                    Text(
                                      controller.feedpost[index].Text,
                                      style: TextStyle(
                                          fontSize: Get.width * 0.033),
                                    ),
                                    Text(
                                      controller.feedpost[index].Text2,
                                      style: TextStyle(
                                          fontSize: Get.width * 0.033,
                                          color: Colors.blue),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
