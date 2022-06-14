// ignore_for_file: file_names

import 'package:crew_app/Models/all_models..dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class FindsCrews extends GetxController {
  List<Crew> select = [];
  List image = Get.arguments[0];
  List name = Get.arguments[1];
  TextEditingController textEditingController = TextEditingController();
  List<Crew> findcrewlist = [
    Crew(images.findcrew1, Texts.findcrew1, 1, false),
    Crew(images.findcrew2, Texts.findcrew2, 2, false),
    Crew(images.findcrew3, Texts.findcrew3, 3, false),
    Crew(images.findcrew4, Texts.findcrew4, 4, false),
    Crew(images.findcrew5, Texts.findcrew5, 5, false),
    Crew(images.findcrew6, Texts.findcrew6, 6, false),
    Crew(images.findcrew7, Texts.findcrew7, 7, false),
    Crew(images.findcrew8, Texts.findcrew8, 8, false)
  ];
  void selectcrew(int index) {
    if (findcrewlist[index].selected == true) {
      findcrewlist[index].selected = false;
    } else {
      findcrewlist[index].selected = true;
    }
    update();
  }

  Searching(dynamic value) {
    select.clear();
    findcrewlist.forEach((n) {
      if (n.Name.toLowerCase().contains(value)) {
        select.add(Crew(n.image, n.Name, n.id, n.selected));
      }
    });
    update();
  }

  Gonextpage(String pagename) {
    Get.toNamed(pagename, arguments: [image, name]);

    update();
  }
}
