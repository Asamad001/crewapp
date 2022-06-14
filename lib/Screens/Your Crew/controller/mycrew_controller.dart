import 'package:crew_app/Models/all_models..dart';

import 'package:crew_app/Utils/utils.dart.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

class MyCrewController extends GetxController {
  List<crew> member = [
    crew(
      images.findcrew3,
      const Color(0xff00C851),
    ),
    crew(
      images.findcrew4,
      const Color(0xff00C851),
    ),
    crew(
      images.findcrew5,
      const Color(0xff00C851),
    ),
    crew(
      images.findcrew6,
      const Color(0xff00C851),
    ),
    crew(
      images.findcrew8,
      const Color.fromARGB(0, 176, 176, 176),
    ),
  ];
  List<Places> places = [
    Places(1, "assets/images/place.png", "LA Campagne Tropicana Beach Resort",
        "Lekki, Nigeria"),
    Places(2, "assets/images/place1.jpg", "Lekki Conservation Center",
        "Lekki, Nigeria")
  ];
  List<highlights> highlight = [
    highlights(
        "assets/images/my_crew_imag.png", "Mental Health\n          day"),
    highlights("assets/images/my_crew_imag2.png", "Girls Weekend"),
    highlights("assets/images/my_crew_imag3.png", "Camp Week"),
    highlights("assets/images/my_crew_imag3.png", "Camp Week")
  ];
  List<post1> posts1 = [
    post1("assets/images/my_crew_imag5.png", ""),
    post1("assets/images/my_crew_imag7.png", "assets/images/play1.png"),
  ];
  List<post2> posts2 = [
    post2("assets/images/my_crew_imag6.png"),
    post2("assets/images/my_crew_imag8.png"),
  ];
}
