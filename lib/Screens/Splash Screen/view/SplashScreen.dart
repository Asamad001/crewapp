import 'dart:async';
import 'package:crew_app/Route_management/set_route.dart';

import 'package:crew_app/Utils/utils.dart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), (() => Get.offNamed(Onboarding)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              images.Splashimage,
              width: Get.width * 0.9,
              height: Get.height * 0.1,
            ),
          ),
          Text(
            'connecting people and personalities',
            style: TextStyle(
                fontSize: Get.width * 0.038,
                // 14,
                fontFamily: 'Sfpro',
                fontStyle: FontStyle.italic,
                color: Color(0xff707070)),
          )
        ],
      ),
    );
  }
}
