import 'package:carousel_slider/carousel_slider.dart';
import 'package:crew_app/Screens/Places%20Screen/controller/event_controller.dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/backbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventScreen extends StatefulWidget {
  @override
  State<EventScreen> createState() => _EventScreen();
}

class _EventScreen extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<EventController>(
        init: EventController(),
        builder: (controller) {
          return Scaffold(
              body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(children: [
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
                  Column(
                    children: [
                      Container(
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
                          child: Stack(
                            children: [
                              Center(
                                  child:
                                      Icon(Icons.notifications_none_outlined)),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 17, top: 10),
                                child: CircleAvatar(
                                  backgroundColor: Color(0xffFF3C5E),
                                  radius: 4,
                                ),
                              )
                            ],
                          )),
                    ],
                  )
                ],
              ),
              SizedBox(height: Get.height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: Get.height * 0.35,
                    width: Get.width * 0.95,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlayAnimationDuration: Duration(milliseconds: 500),
                        viewportFraction: 0.89,
                        autoPlay: true,
                        aspectRatio: 1.2,
                        enlargeCenterPage: true,
                      ),
                      items: [
                        ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return Container(
                                height: Get.height * 0.3,
                                width: Get.width * 1,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                        image: AssetImage(controller.image),
                                        fit: BoxFit.cover)),
                              );
                            })
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      // image: DecorationImage(
                      //     image: AssetImage(controller.image),
                      //     fit: BoxFit.cover)
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: Get.width * 0.085),
                child: Row(
                  children: [
                    Text(
                      controller.name,
                      style: TextStyle(fontFamily: "Bold", fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.01),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.065),
                  Icon(Icons.location_on_outlined),
                  Text(controller.place),
                  Padding(
                    padding: EdgeInsets.only(left: Get.width * 0.5),
                    child: Column(
                      children: [
                        Container(
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
                            child: Center(child: Text("4.9"))),
                        Text(
                          "Rating",
                          style: TextStyle(
                              fontSize: 8,
                              fontFamily: "Regular",
                              color: Color(0xff636363)),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: Get.height * 0.035),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.1),
                  const Text(
                    "Lorem ipsum dolor sit amet consectetur\nadipisicing elit. Maxime mollitia voluptatum\nlaborum numquam blanditiis",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff707070),
                        fontFamily: "Regular",
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(height: Get.height * 0.03),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.1),
                  const Text(
                    "view on map",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 10,
                      color: Color(0xff131313),
                      fontWeight: FontWeight.w600,
                      fontFamily: "SemiBold",
                    ),
                  ),
                  SizedBox(width: Get.width * 0.05),
                  const Text(
                    "view website",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 10,
                      color: Color(0xff131313),
                      fontWeight: FontWeight.w600,
                      fontFamily: "SemiBold",
                    ),
                  )
                ],
              ),
              SizedBox(height: Get.height * 0.03),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.07),
                  Container(
                    child: Center(
                      child: Text(
                        "Invite crew",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: "Regular"),
                      ),
                    ),
                    height: Get.height * 0.05,
                    width: Get.width * 0.28,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(width: Get.width * 0.05),
                  Container(
                    child: Icon(
                      Icons.bookmark,
                      color: Colors.white,
                    ),
                    height: Get.height * 0.05,
                    width: Get.width * 0.14,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.03),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.09),
                  const Text(
                    "See other crews going to this place",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff131313),
                      fontFamily: "Bold",
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.03),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.09),
                  Container(
                    height: Get.height * 0.08,
                    width: Get.width * 0.18,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(images.profileimage1),
                            fit: BoxFit.cover),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40, bottom: 40),
                        child: Text(
                          "The Adventures",
                          style: TextStyle(fontSize: 14, fontFamily: "Bold"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 105, bottom: 5),
                        child: Text(
                          "crew",
                          style: TextStyle(fontSize: 8, fontFamily: "Bold"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, right: 50),
                        child: Container(
                          height: Get.height * 0.04,
                          width: Get.width * 0.2,
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5, left: 2),
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundImage: AssetImage(
                                      "assets/images/travel_imag_avatar.png"),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 15),
                                child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: AssetImage(
                                        "assets/images/travel_imag_avatar3.png")),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 30),
                                child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: AssetImage(
                                        "assets/images/travel_imag_avatar1.png")),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 45),
                                child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: AssetImage(
                                        "assets/images/travel_imag_avatar2.png")),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.03),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.09),
                  Container(
                    height: Get.height * 0.08,
                    width: Get.width * 0.18,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(images.storyimage3),
                            fit: BoxFit.cover),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(width: Get.width * 0.02),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40, bottom: 40),
                        child: Text(
                          "NDG",
                          style: TextStyle(fontSize: 14, fontFamily: "Bold"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35, bottom: 5),
                        child: Text(
                          "crew",
                          style: TextStyle(fontSize: 8, fontFamily: "Bold"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, right: 50),
                        child: Container(
                          height: Get.height * 0.04,
                          width: Get.width * 0.2,
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5, left: 2),
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundImage: AssetImage(
                                      "assets/images/travel_imag_avatar.png"),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 15),
                                child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: AssetImage(
                                        "assets/images/travel_imag_avatar3.png")),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 30),
                                child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: AssetImage(
                                        "assets/images/travel_imag_avatar1.png")),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 45),
                                child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: AssetImage(
                                        "assets/images/travel_imag_avatar2.png")),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.03),
              Row(
                children: [
                  SizedBox(width: Get.width * 0.09),
                  Container(
                    height: Get.height * 0.08,
                    width: Get.width * 0.18,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(images.storyimage1),
                            fit: BoxFit.cover),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(width: Get.width * 0.02),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40, bottom: 40),
                        child: Text(
                          "Disturbing Lagos",
                          style: TextStyle(fontSize: 14, fontFamily: "Bold"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 112, bottom: 5),
                        child: Text(
                          "crew",
                          style: TextStyle(fontSize: 8, fontFamily: "Bold"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, right: 50),
                        child: Container(
                          height: Get.height * 0.04,
                          width: Get.width * 0.2,
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5, left: 2),
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundImage: AssetImage(
                                      "assets/images/travel_imag_avatar.png"),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 15),
                                child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: AssetImage(
                                        "assets/images/travel_imag_avatar3.png")),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 30),
                                child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: AssetImage(
                                        "assets/images/travel_imag_avatar1.png")),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 45),
                                child: CircleAvatar(
                                    radius: 10,
                                    backgroundImage: AssetImage(
                                        "assets/images/travel_imag_avatar2.png")),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.035)
            ]),
          ));
        });
  }
}
