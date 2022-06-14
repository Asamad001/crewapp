import 'package:crew_app/Models/all_models..dart';
import 'package:get/get.dart';
import 'package:crew_app/Utils/utils.dart.dart';

class HangoutScreenController extends GetxController {
  String title = "How was your\nhangout?";
  String title1 = "Who else was\nthere?";
  String title2 = "Would you like to\nhang out again?";
  String subtitle = "We’d love to know";
  List<emojis> mood = [
    emojis("😁", "Amazing"),
    emojis("😎", "Not bad"),
    emojis("🙁", "Meh"),
    emojis("😕", "Not great"),
    emojis("😔", "Terrible"),
  ];
  List<people> peoples = [
    people(images.findcrew5, "Dumss"),
    people(images.findcrew6, "Swill"),
    people(images.findcrew7, "Paulo"),
    people(images.findcrew8, "Lola"),
  ];
}
