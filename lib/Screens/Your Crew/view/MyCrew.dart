import 'package:crew_app/Screens/Your%20Crew/controller/mycrew_controller.dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/BoldText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCrew extends StatefulWidget {
  const MyCrew({Key? key}) : super(key: key);

  @override
  State<MyCrew> createState() => _MyCrewState();
}

class _MyCrewState extends State<MyCrew> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyCrewController>(
        init: MyCrewController(),
        builder: (controller) {
          return Scaffold(
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: Get.height * 0.12),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.06),
                      text('Crew', Colors.black),
                      SizedBox(width: Get.width * 0.52),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Text(
                          "My Profile",
                          style:
                              TextStyle(color: Color(0xff888888), fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Get.height * 0.035),
                  Stack(
                    children: [
                      Container(
                        height: Get.height * 0.12,
                        width: Get.width * 0.27,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xffFF3C5E),
                              Colors.pink.shade200,
                              Colors.purple
                            ]),
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          margin: EdgeInsets.all(1.5),
                          height: Get.height * 0.11,
                          width: Get.width * 0.25,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(images.storyimage),
                                  fit: BoxFit.cover),
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60, left: 60),
                        child: CircleAvatar(
                          backgroundColor: Color(0xffF26D21),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Get.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: Get.width * 0.12),
                      Text(
                        "You Never Walk Alone",
                        style: TextStyle(fontSize: 22, fontFamily: "Bold"),
                      ),
                      SizedBox(width: 3),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          "crew",
                          style: TextStyle(fontSize: 8, fontFamily: "Bold"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.03),
                  Text(
                    "         Yup, as the name implies. We’ve got each\n                                 other’s back",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Regular",
                        color: Color(0xff888888)),
                  ),
                  SizedBox(height: Get.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "11.1k",
                            style: TextStyle(fontSize: 15, fontFamily: "Bold"),
                          ),
                          Text(
                            "followers",
                            style: TextStyle(
                                fontSize: 8, color: Color(0xff585858)),
                          ),
                        ],
                      ),
                      SizedBox(width: Get.width * 0.08),
                      Column(
                        children: [
                          Text(
                            "76k",
                            style: TextStyle(fontSize: 15, fontFamily: "Bold"),
                          ),
                          Text(
                            "following",
                            style: TextStyle(
                                fontSize: 8, color: Color(0xff585858)),
                          ),
                        ],
                      ),
                      SizedBox(width: Get.width * 0.08),
                      Column(
                        children: [
                          Icon(Icons.info_outline),
                          Text(
                            "info",
                            style: TextStyle(
                                fontSize: 8, color: Color(0xff585858)),
                          ),
                        ],
                      ),
                      SizedBox(width: Get.width * 0.08),
                      Column(
                        children: [
                          Icon(Icons.settings),
                          Text(
                            "settings",
                            style: TextStyle(
                                fontSize: 8, color: Color(0xff585858)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.05),
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.04,
                      ),
                      Text(
                        "Members",
                        style: TextStyle(fontSize: 16, fontFamily: "Bold"),
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.01),
                      Row(
                        children:
                            List.generate(controller.member.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Stack(
                              children: [
                                Container(
                                  height: Get.height * 0.06,
                                  width: Get.width * 0.14,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              controller.member[index].image),
                                          fit: BoxFit.cover),
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: Get.height * 0.044,
                                      left: Get.width * 0.097),
                                  child: CircleAvatar(
                                    backgroundColor:
                                        controller.member[index].color,
                                    radius: 7,
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                      SizedBox(width: Get.width * 0.04),
                      Text(
                        "+3",
                        style:
                            TextStyle(color: Color(0xff707070), fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(height: Get.height * 0.05),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.04),
                      Text(
                        "Upcoming hangouts",
                        style: TextStyle(fontSize: 16, fontFamily: "Bold"),
                      ),
                      SizedBox(width: Get.width * 0.4),
                      Text(
                        "view all",
                        style:
                            TextStyle(color: Color(0xff888888), fontSize: 12),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          height: Get.width * 0.48,
                          width: Get.width * 1,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.places.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 10),
                                      child: Container(
                                        height: Get.width * 0.25,
                                        width: Get.width * 0.67,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(controller
                                                    .places[index].image),
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
                                                topRight: Radius.circular(20))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Container(
                                        height: Get.width * 0.15,
                                        width: Get.width * 0.67,
                                        child: Column(
                                          children: [
                                            SizedBox(height: Get.width * 0.02),
                                            Row(
                                              children: [
                                                SizedBox(width: 10),
                                                Text(
                                                  controller.places[index].name,
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 5),
                                            Row(
                                              children: [
                                                SizedBox(width: 10),
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  size: 14,
                                                  color: Color(0xff585858),
                                                ),
                                                Text(
                                                  controller
                                                      .places[index].place,
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Color(0xff585858)),
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  "14km away",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Color(0xff585858)),
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  "See more",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      decoration: TextDecoration
                                                          .underline,
                                                      color: Color(0xff585858)),
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
                                                bottomLeft: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20))),
                                      ),
                                    )
                                  ],
                                );
                              })),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.02),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.04),
                      Text(
                        "Highlights",
                        style: TextStyle(fontSize: 16, fontFamily: "Bold"),
                      ),
                      SizedBox(width: Get.width * 0.58),
                      Text(
                        "view all",
                        style:
                            TextStyle(color: Color(0xff888888), fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(height: Get.height * 0.02),
                  Row(
                    children: [
                      Container(
                        height: Get.height * 0.17,
                        width: Get.width * 1,
                        child: ListView.builder(
                            itemCount: controller.highlight.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
                                  height: Get.height * 0.07,
                                  width: Get.width * 0.28,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            controller.highlight[index].image),
                                      )),
                                  child: Center(
                                      child: Text(
                                    controller.highlight[index].name,
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF), fontSize: 14),
                                  )),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                  SizedBox(height: Get.height * 0.02),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.04),
                      Text(
                        "Posts",
                        style: TextStyle(fontSize: 16, fontFamily: "Bold"),
                      ),
                      SizedBox(width: Get.width * 0.68),
                      Text(
                        "view all",
                        style:
                            TextStyle(color: Color(0xff888888), fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(height: Get.height * 0.02),
                  Row(
                    children: [
                      Container(
                        height: Get.height * 0.22,
                        width: Get.width * 1,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: Get.width * 0.02),
                                Container(
                                  child: Image.asset("assets/images/play1.png"),
                                  height: Get.height * 0.18,
                                  width: Get.width * 0.52,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/my_crew_imag4.png"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: ListView.builder(
                                              itemCount: 2,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5),
                                                  child: Container(
                                                    child: controller
                                                            .posts1[index]
                                                            .centreicon
                                                            .isNotEmpty
                                                        ? Image.asset(controller
                                                            .posts1[index]
                                                            .centreicon)
                                                        : SizedBox(),
                                                    height: Get.height * 0.09,
                                                    width: Get.width * 0.27,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                controller
                                                                    .posts1[
                                                                        index]
                                                                    .image),
                                                            fit: BoxFit.cover),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                  ),
                                                );
                                              }),
                                          height: Get.height * 0.09,
                                          width: Get.width * 0.46,
                                        )
                                      ],
                                    ),
                                    SizedBox(height: Get.height * 0.001),
                                    Row(
                                      children: [
                                        Container(
                                          height: Get.height * 0.09,
                                          width: Get.width * 0.46,
                                          child: ListView.builder(
                                              itemCount:
                                                  controller.posts2.length,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5),
                                                  child: Container(
                                                    height: Get.height * 0.09,
                                                    width: Get.width * 0.27,
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                controller
                                                                    .posts2[
                                                                        index]
                                                                    .image),
                                                            fit: BoxFit.cover),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                  ),
                                                );
                                              }),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  Text(
                    "You’ve reached the end 🎉",
                    style: TextStyle(color: Color(0xffA3A3A3), fontSize: 12),
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  )
                ],
              ),
            ),
          );
        });
    // return GetBuilder<MyCrewController>(
    //     init: MyCrewController(),
    //     builder: (controller) {
    //       return Scaffold(
    //         body: controller.child[controller.currentindex],
    //         bottomNavigationBar: BottomNavigationBar(
    //           items: [
    //             BottomNavigationBarItem(
    //                 icon: Container(
    //                     height: 40,
    //                     width: 40,
    //                     decoration: BoxDecoration(
    //                         color: controller.currentindex == 0
    //                             ? Colors.black
    //                             : Colors.white,
    //                         borderRadius: BorderRadius.circular(10)),
    //                     child: Icon(
    //                       Icons.home_outlined,
    //                       size: 30,
    //                       color: controller.currentindex == 0
    //                           ? Colors.white
    //                           : Colors.black,
    //                     )),
    //                 label: "Home"),
    //             BottomNavigationBarItem(
    //                 icon: Container(
    //                     height: 40,
    //                     width: 40,
    //                     decoration: BoxDecoration(
    //                         color: controller.currentindex == 1
    //                             ? Colors.black
    //                             : Colors.white,
    //                         borderRadius: BorderRadius.circular(10)),
    //                     child: Icon(
    //                       Icons.explore_outlined,
    //                       size: 30,
    //                       color: controller.currentindex == 1
    //                           ? Colors.white
    //                           : Colors.black,
    //                     )),
    //                 label: "Explore"),
    //             BottomNavigationBarItem(
    //                 icon: Container(
    //                     height: 40,
    //                     width: 40,
    //                     decoration: BoxDecoration(
    //                         color: controller.currentindex == 2
    //                             ? Colors.black
    //                             : Colors.white,
    //                         borderRadius: BorderRadius.circular(10)),
    //                     child: Icon(
    //                       Icons.message_outlined,
    //                       size: 30,
    //                       color: controller.currentindex == 2
    //                           ? Colors.white
    //                           : Colors.black,
    //                     )),
    //                 label: "Chats"),
    //             BottomNavigationBarItem(
    //                 icon: Container(
    //                     height: 40,
    //                     width: 40,
    //                     decoration: BoxDecoration(
    //                         color: controller.currentindex == 3
    //                             ? Colors.black
    //                             : Colors.white,
    //                         borderRadius: BorderRadius.circular(10)),
    //                     child: Icon(
    //                       Icons.person_outline,
    //                       size: 30,
    //                       color: controller.currentindex == 3
    //                           ? Colors.white
    //                           : Colors.black,
    //                     )),
    //                 label: "Profile"),
    //           ],
    //           currentIndex: controller.currentindex,
    //           showUnselectedLabels: true,
    //           selectedItemColor: Colors.black,
    //           unselectedItemColor: Colors.black,
    //           selectedLabelStyle: TextStyle(fontSize: 10),
    //           unselectedLabelStyle: TextStyle(fontSize: 10),
    //           onTap: controller.ontap,
    //         ),
    //       );
    //     });
  }
}
