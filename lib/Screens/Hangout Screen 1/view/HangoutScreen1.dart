import 'package:crew_app/Controller/hangout_controller.dart';
import 'package:crew_app/Widgets/backbutton.dart';
import 'package:crew_app/Widgets/button.dart';
import 'package:crew_app/Widgets/BoldText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HangoutScreen1 extends StatefulWidget {
  const HangoutScreen1({Key? key}) : super(key: key);

  @override
  State<HangoutScreen1> createState() => _HangoutScreen1State();
}

class _HangoutScreen1State extends State<HangoutScreen1> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HangoutScreenController>(
        init: HangoutScreenController(),
        builder: (controller) {
          return Scaffold(
            body: Column(
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
                    "Step 1 of 3",
                    style: TextStyle(color: Color(0xff888888), fontSize: 12),
                  ),
                ]),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.062),
                  text(controller.title, Colors.black)
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
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.78,
                      width: MediaQuery.of(context).size.width * 1,
                      child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.mood.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 0.8,
                            crossAxisSpacing: 20,
                          ),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                      child: Text(
                                    controller.mood[index].emoji,
                                    style: TextStyle(fontSize: 30),
                                  )),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.012),
                                Text(controller.mood[index].name)
                              ],
                            );
                          }),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Button(
                    top: Get.height * 0.07,
                    left: Get.width * 0.0,
                    buttonheight: Get.height * 0.12,
                    buttonwidth: Get.width * 0.75,
                    Buttoncolor: Colors.black,
                    text: "Continue",
                    textcolor: Colors.white,
                    onpressed: () {}),
                Button(
                    top: Get.height * 0.00,
                    left: Get.width * 0.0,
                    buttonheight: Get.height * 0.12,
                    buttonwidth: Get.width * 0.75,
                    Buttoncolor: Colors.transparent,
                    text: "skip",
                    textcolor: Colors.black,
                    onpressed: () {}),
                // Button(
                //     MediaQuery.of(context).size.height * 0.07,
                //     MediaQuery.of(context).size.width * 0.0,
                //     MediaQuery.of(context).size.width * 0.12,
                //     MediaQuery.of(context).size.width * 0.75,
                //     Colors.black,
                //     'Continue',
                //     Colors.white,
                //     () {}),
                // Button(
                //     MediaQuery.of(context).size.height * 0.00,
                //     MediaQuery.of(context).size.width * 0.0,
                //     MediaQuery.of(context).size.width * 0.12,
                //     MediaQuery.of(context).size.width * 0.75,
                //     Colors.transparent,
                //     'Skip',
                //     Colors.black,
                //     () {}),
              ],
            ),
          );
        });
  }
}
