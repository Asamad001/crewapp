import 'package:crew_app/Screens/Explore%20Screen/controller/explore_controller.dart';
import 'package:crew_app/Route_management/set_route.dart';
import 'package:crew_app/Widgets/BoldText.dart';
import 'package:crew_app/Widgets/crew_container.dart';
import 'package:crew_app/Widgets/notification_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreScreen extends StatefulWidget {
  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExploreController>(
        init: ExploreController(),
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
                      text('Explore', Colors.black),
                      SizedBox(width: Get.width * 0.5),
                      NotificationButton(
                        height: Get.width * 0.08,
                        width: Get.width * 0.09,
                        onpressed: () {},
                      )
                    ],
                  ),
                  SizedBox(height: Get.height * 0.05),
                  Row(
                    children: [
                      SizedBox(
                        width: Get.width * 0.08,
                      ),
                      Container(
                          height: Get.height * 0.035,
                          width: Get.width * 0.85,
                          child: const TextField(
                            decoration: InputDecoration(
                              suffixIconConstraints:
                                  BoxConstraints.tightForFinite(),
                              suffixIcon: Icon(Icons.highlight_remove),
                              contentPadding: EdgeInsets.only(bottom: 20),
                              hintText: "What do you love to do?",
                              hintStyle: TextStyle(
                                color: Color(0xffB6B6B6),
                                fontSize: 12,
                              ),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.05),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.08),
                      Text(
                        "Chill places near you",
                        style: TextStyle(
                            fontSize: Get.width * 0.044,
                            fontFamily: "SemiBold",
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: Get.width * 0.38),
                      Text(
                        "View all",
                        style: TextStyle(
                            fontSize: Get.width * 0.027,
                            color: Color(0xff636363)),
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.01),
                  Row(
                    children: [
                      Container(
                          height: Get.width * 0.6,
                          width: Get.width * 1,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.places.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    controller.Gonplacespage(events, index);
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
                                                  image: AssetImage(controller
                                                      .places[index].image),
                                                  fit: BoxFit.cover),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.4),
                                                    blurRadius: 8,
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
                                                    controller
                                                        .places[index].name,
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                      width: Get.width * 0.027),
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    size: Get.width * 0.04,
                                                    color: Color(0xff585858),
                                                  ),
                                                  Text(
                                                    controller
                                                        .places[index].place,
                                                    style: TextStyle(
                                                        fontSize:
                                                            Get.width * 0.027,
                                                        color:
                                                            Color(0xff585858)),
                                                  ),
                                                  SizedBox(
                                                      width: Get.width * 0.027),
                                                  Text(
                                                    "14km away",
                                                    style: TextStyle(
                                                        fontSize:
                                                            Get.width * 0.027,
                                                        color:
                                                            Color(0xff585858)),
                                                  ),
                                                  SizedBox(
                                                      width: Get.width * 0.027),
                                                  Text(
                                                    "See more",
                                                    style: TextStyle(
                                                        fontSize:
                                                            Get.width * 0.027,
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
                                );
                              })),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.02),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.08),
                      Text(
                        "Events you might want to go",
                        style: TextStyle(
                            fontSize: Get.width * 0.044,
                            fontFamily: "SemiBold",
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: Get.width * 0.24),
                      Text(
                        "View all",
                        style: TextStyle(
                            fontSize: Get.width * 0.027,
                            color: Color(0xff636363)),
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.025),
                  Row(
                    children: [
                      Container(
                          height: Get.height * 0.25,
                          width: Get.width * 1,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.events.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    controller.Goeventspage(events, index);
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
                                                  image: AssetImage(controller
                                                      .events[index].image),
                                                  fit: BoxFit.cover),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.4),
                                                    blurRadius: 8,
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
                                                    controller
                                                        .events[index].name,
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 5),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                      width: Get.width * 0.027),
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    size: Get.width * 0.04,
                                                    color: Color(0xff585858),
                                                  ),
                                                  Text(
                                                    controller
                                                        .events[index].date,
                                                    style: TextStyle(
                                                        fontSize:
                                                            Get.width * 0.027,
                                                        color:
                                                            Color(0xff585858)),
                                                  ),
                                                  SizedBox(
                                                      width: Get.width * 0.027),
                                                  Text(
                                                    "14km away",
                                                    style: TextStyle(
                                                        fontSize:
                                                            Get.width * 0.027,
                                                        color:
                                                            Color(0xff585858)),
                                                  ),
                                                  SizedBox(
                                                      width: Get.width * 0.027),
                                                  Text(
                                                    "See more",
                                                    style: TextStyle(
                                                        fontSize:
                                                            Get.width * 0.027,
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
                                );
                              })),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: Get.width * 0.08),
                      const Text(
                        "People you may like",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "SemiBold",
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: Get.width * 0.38),
                      Text(
                        "View all",
                        style: TextStyle(
                            fontSize: Get.width * 0.027,
                            color: Color(0xff636363)),
                      ),
                    ],
                  ),
                  Container(
                    height: Get.height * 1.2,
                    width: double.infinity,
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: controller.crewlist.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                                      border:
                                          controller.crewlist[index].selected ==
                                                  true
                                              ? Border.all(
                                                  color: Color(0xffFF3C5E),
                                                  width: 2)
                                              : Border.all(
                                                  color: Colors.transparent),
                                      image: controller.crewlist[index].image)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        controller.crewlist[index].Name,
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
                    height: Get.height * 0.05,
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
  }
}
