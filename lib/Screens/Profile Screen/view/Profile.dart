import 'package:crew_app/Screens/Select%20Crew%20Screen/controller/SelectCrew_controller.dart';
import 'package:crew_app/Screens/Profile%20Screen/controller/profile_controller.dart';
import 'package:crew_app/Screens/Your%20Interests%20Screen/controller/YourInterest_controller.dart';
import 'package:crew_app/Route_management/set_route.dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:crew_app/Widgets/backbutton.dart';
import 'package:crew_app/Widgets/notification_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  List image;
  List name;
  ProfileScreen(this.image, this.name);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        init: ProfileController(),
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
                    SizedBox(height: Get.height * 0.06),
                    Container(
                      height: Get.width * 0.2,
                      width: Get.width * 0.23,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(images.profileimage),
                              fit: BoxFit.fill),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(height: Get.height * 0.022),
                    Text(
                      "Ciroma Adekunle",
                      style: TextStyle(
                          fontSize: Get.width * 0.061,
                          fontFamily: "Regular",
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    SizedBox(height: Get.height * 0.022),
                    Text(
                      "sit amet consectetur adipisicing elit.\n        Maxime mollitia, molestiae\n            quas vel sint commodi",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Regular",
                          color: Colors.black),
                    ),
                    SizedBox(height: Get.height * 0.035),
                    Row(
                      children: [
                        SizedBox(width: Get.width * 0.04),
                        Text(
                          "Interests",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "SemiBold",
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(width: Get.width * 0.62),
                        IconButton(
                          onPressed: () {
                            Get.toNamed(selectcrew);
                          },
                          icon: Text(
                            "Edit",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Regular",
                                color: Color(0xff636363)),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: Get.width * 0.45,
                      width: double.infinity,
                      child: GridView.builder(
                          itemCount: widget.name.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, childAspectRatio: 2.7),
                          itemBuilder: (context, index) {
                            return ListView(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 4, right: 4),
                                child: Row(
                                  children: [
                                    Container(
                                      height: Get.width * 0.09,
                                      width: Get.width * 0.3,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.3),
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
                                            height: 40,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(widget
                                                        .image[index]
                                                        .toString()))),
                                          ),
                                          Expanded(
                                            child: widget.name[index]
                                                        .toString() ==
                                                    "Technology"
                                                ? FittedBox(
                                                    child: Text(
                                                      widget.name[index],
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily:
                                                              "Regular"),
                                                    ),
                                                  )
                                                : Text(
                                                    widget.name[index],
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: "Regular"),
                                                  ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]);
                          }),
                    ),
                    SizedBox(height: Get.height * 0.02),
                    Row(
                      children: [
                        SizedBox(width: Get.width * 0.04),
                        Text(
                          "Past Crews",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "SemiBold",
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.02),
                    Row(
                      children: [
                        SizedBox(width: Get.width * 0.05),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(mycrew);
                          },
                          child: Container(
                            height: Get.height * 0.08,
                            width: Get.width * 0.14,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/profile_imag1.png")),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        SizedBox(width: Get.width * 0.04),
                        Container(
                          height: Get.height * 0.08,
                          width: Get.width * 0.14,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/profile_imag2.png")),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        SizedBox(width: Get.width * 0.04),
                        Container(
                          height: Get.height * 0.08,
                          width: Get.width * 0.14,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/profile_imag3.png")),
                              borderRadius: BorderRadius.circular(5)),
                        )
                      ],
                    ),
                    SizedBox(height: Get.height * 0.02),
                    Row(
                      children: [
                        SizedBox(width: Get.width * 0.042),
                        Text(
                          "Saved",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "SemiBold",
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(width: Get.width * 0.62),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 13,
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: Get.width * 0.042),
                        Container(
                          width: Get.width * 0.9,
                          child: Divider(
                            color: Color(0xff0000004D).withOpacity(0.3),
                            height: 3,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.02),
                    Row(
                      children: [
                        SizedBox(width: Get.width * 0.042),
                        Text(
                          "Setting",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "SemiBold",
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(width: Get.width * 0.62),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 13,
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: Get.width * 0.042),
                        Container(
                          width: Get.width * 0.9,
                          child: Divider(
                            color: Color(0xff0000004D).withOpacity(0.3),
                            height: 3,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Get.height * 0.02),
                    Row(
                      children: [
                        SizedBox(width: Get.width * 0.042),
                        Text(
                          "Logout",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "SemiBold",
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(width: Get.width * 0.62),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 13,
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: Get.width * 0.042),
                        Container(
                          width: Get.width * 0.9,
                          child: Divider(
                            color: Color(0xff0000004D).withOpacity(0.3),
                            height: 3,
                            thickness: 1,
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          );
        });
  }
}
