import 'package:crew_app/Screens/Introduction%20Screen/controller/onboarding_controller.dart';
import 'package:crew_app/Route_management/set_route.dart';
import 'package:crew_app/Screens/Introduction%20Screen/widgets/Text_description.dart';
import 'package:crew_app/Screens/Introduction%20Screen/widgets/Text_title.dart';
import 'package:crew_app/Widgets/clip_container.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
        init: OnboardingController(),
        builder: (controller) {
          return Scaffold(
            body: PageView.builder(
                onPageChanged: controller.selectedindex,
                itemCount: controller.onboardingpages.length,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    child: Stack(
                      children: [
                        ClipContainer(
                            controller.onboardingpages[index].image,
                            MediaQuery.of(context).size.height * 0.048,
                            MediaQuery.of(context).size.width * 0.54,
                            controller.onboardingpages[index].anothertitle,
                            3,
                            MediaQuery.of(context).size.height * 0.21),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.67,
                            left: MediaQuery.of(context).size.width * 0.12,
                          ),
                          child: Column(
                            children: [
                              TextTitle(
                                  text:
                                      controller.onboardingpages[index].title),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.03),
                              TextDescription(
                                  text: controller
                                      .onboardingpages[index].description)
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.92,
                                left: MediaQuery.of(context).size.width * 0.12,
                              ),
                              child: Row(
                                children: List.generate(
                                    controller.onboardingpages.length,
                                    (index) => Obx(() {
                                          return Container(
                                              margin: EdgeInsets.all(4),
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.01,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.01,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: controller
                                                              .selectedindex
                                                              .value ==
                                                          index
                                                      ? Colors.black
                                                      : Colors.grey));
                                        })),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.92,
                                left: MediaQuery.of(context).size.width * 0.5,
                              ),
                              child: MaterialButton(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onPressed: () {
                                  Get.toNamed(GetStarted);
                                },
                                child: Text("skip"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          );
        });
  }
}
