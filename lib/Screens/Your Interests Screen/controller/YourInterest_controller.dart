// ignore_for_file: file_names

import 'package:crew_app/Models/all_models..dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

// ignore: camel_case_types
class tagscreen extends GetxController {
  List image = Get.arguments[0];
  List name = Get.arguments[1];
  TextEditingController textEditingController = TextEditingController();
  List<Tags> select = [];
  Searching(dynamic value) {
    select.clear();
    tagslist.forEach((n) {
      if (n.tags.toLowerCase().contains(value)) {
        select.add(Tags(n.tags, n.select));
      }
    });
    update();
  }

  List<Crew> crewlists = [
    Crew(images.crew1, Texts.crew1, 1, false),
    Crew(images.crew2, Texts.crew2, 2, false),
    Crew(images.crew3, Texts.crew3, 3, false),
    Crew(images.crew4, Texts.crew4, 4, false),
    Crew(images.crew5, Texts.crew5, 5, false),
    Crew(images.crew6, Texts.crew6, 6, false),
    Crew(images.crew7, Texts.crew7, 7, false),
    Crew(images.crew8, Texts.crew8, 8, false)
  ];

  List<Tags> tagslist = [
    Tags("Burna Boy.", false),
    Tags("Wizkid", false),
    Tags("Justin Beiber", false),
    Tags("Asa", false),
    Tags("The Cavemen", false),
    Tags("Tiwa Savage", false),
    Tags("D2D", false),
    Tags("Chris Brown", false),
    Tags("Burna Boy", false),
    Tags("Burna Boy", false),
    Tags("Burna Boy.", false),
    Tags("Burna Boy", false),
    Tags("Burna Boy", false),
    Tags("Burna Boy", false),
    Tags("Burna Boy", false),
    Tags("Burna Boy", false),
    Tags("Burna Boy", false),
    Tags("Burna Boy", false),
    Tags("Burna Boy", false),
    Tags("Burna Boy.", false),
  ];
  void selectcrew(int index) {
    if (tagslist[index].select == true) {
      tagslist[index].select = false;
    } else {
      tagslist[index].select = true;
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // print(name.toString());
    // print("XSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS");
    print(image.toString());
    print(image.length - 1);
  }

  remove(var images, var names) {
    image.removeAt(images);
    name.removeAt(names);
    update();
  }
}
