import 'package:crew_app/Models/all_models..dart';
import 'package:get/get.dart';

class EventController extends GetxController {
  var image = Get.arguments[0]["image"];
  var name = Get.arguments[1]["name"];
  var place = Get.arguments[2]["place"];
}
