import 'package:crew_app/Controller/hangout_controller.dart';
import 'package:crew_app/Widgets/backbutton.dart';
import 'package:crew_app/Widgets/button.dart';
import 'package:crew_app/Widgets/BoldText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HangoutScreen2 extends StatefulWidget {
  const HangoutScreen2({Key? key}) : super(key: key);

  @override
  State<HangoutScreen2> createState() => _HangoutScreen1State();
}

class _HangoutScreen1State extends State<HangoutScreen2> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HangoutScreenController>(
        init: HangoutScreenController(),
        builder: (controller) {
          return Scaffold(
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                  Row(children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.06),
                    Backbutton(Colors.black12, () {
                      Get.back();
                    }),
                  ]),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                  Row(children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.06),
                    Text(
                      "Step 2 of 3",
                      style: TextStyle(color: Color(0xff888888), fontSize: 12),
                    ),
                  ]),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.062),
                    text(controller.title1, Colors.black)
                  ]),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.023),
                  Row(children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.062),
                    Text(
                      "We’d love to know",
                      style: TextStyle(color: Color(0xff888888), fontSize: 16),
                    ),
                  ]),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.width * 1.35,
                            width: MediaQuery.of(context).size.width * 1,
                            child: GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: controller.peoples.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 0.95,
                                  crossAxisSpacing: 10,
                                ),
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Container(
                                        height: 128,
                                        width: 135,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(controller
                                                    .peoples[index].image)),
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                      SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.012),
                                      Text(controller.peoples[index].name)
                                    ],
                                  );
                                }),
                          )
                        ],
                      ),
                      Button(
                          top: Get.height * 0.47,
                          left: Get.width * 0.1,
                          buttonheight: Get.height * 0.12,
                          buttonwidth: Get.width * 0.85,
                          Buttoncolor: Colors.black,
                          text: "Continue",
                          textcolor: Colors.white,
                          onpressed: () {}),
                      Button(
                          top: Get.height * 0.52,
                          left: Get.width * 0.1,
                          buttonheight: Get.height * 0.12,
                          buttonwidth: Get.width * 0.85,
                          Buttoncolor: Colors.transparent,
                          text: "skip",
                          textcolor: Colors.black,
                          onpressed: () {}),
                      // Button(
                      //     MediaQuery.of(context).size.height * 0.47,
                      //     MediaQuery.of(context).size.width * 0.1,
                      //     MediaQuery.of(context).size.width * 0.12,
                      //     MediaQuery.of(context).size.width * 0.85,
                      //     Colors.black,
                      //     'Continue',
                      //     Colors.white,
                      //     () {}),
                      // Button(
                      //     MediaQuery.of(context).size.height * 0.52,
                      //     MediaQuery.of(context).size.width * 0.1,
                      //     MediaQuery.of(context).size.width * 0.12,
                      //     MediaQuery.of(context).size.width * 0.85,
                      //     Colors.transparent,
                      //     'Skip',
                      //     Colors.black,
                      //     () {}),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
