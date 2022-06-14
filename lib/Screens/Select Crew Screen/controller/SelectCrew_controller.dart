// ignore_for_file: file_names

import 'package:crew_app/Models/all_models..dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SelectedCrew extends GetxController {
  List<Crew> selects = [];

  TextEditingController textEditingController = TextEditingController();
  List<Crew> crewlist = [
    Crew(images.crew1, Texts.crew1, 1, false),
    Crew(images.crew2, Texts.crew2, 2, false),
    Crew(images.crew3, Texts.crew3, 3, false),
    Crew(images.crew4, Texts.crew4, 4, false),
    Crew(images.crew5, Texts.crew5, 5, false),
    Crew(images.crew6, Texts.crew6, 6, false),
    Crew(images.crew7, Texts.crew7, 7, false),
    Crew(images.crew8, Texts.crew8, 8, false)
  ];
  int number = 0;
  List select = [];
  List imagess = [];
  selectcrew(int index, var name, var image) {
    if (crewlist[index].selected == true) {
      crewlist[index].selected = false;
      select.remove(name);
      imagess.remove(image);
      number--;
    } else {
      crewlist[index].selected = true;
      select.add(name);
      imagess.add(image);
      number++;
    }
    update();
  }

  Gonextpage(String page, dynamic context) {
    if (number >= 3) {
      Get.toNamed(page, arguments: [imagess, select]);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
    update();
  }

  Searching(dynamic value) {
    selects.clear();
    crewlist.forEach((n) {
      if (n.Name.toLowerCase().contains(value)) {
        selects.add(Crew(n.image, n.Name, n.id, n.selected));
      }
    });
    update();
  }

  final snackBar = SnackBar(
    backgroundColor: Colors.red.shade900,
    duration: Duration(milliseconds: 700),
    content: const Text('Please Select at least 3 from the list'),
  );
}
