import 'package:crew_app/Models/all_models..dart';
import 'package:crew_app/Utils/utils.dart.dart';

import 'package:get/get.dart';

class ChatsController extends GetxController {
  // ignore: non_constant_identifier_names
  List<chats> Chats = [
    chats(images.profileimage1, "You Never Walk Alone", "crew",
        "Hey bro... How’s it going? Hope", "13:01 PM", "13"),
    chats(images.chatsimage1, "Dinma", "", "Hey bro... How’s it going? Hope",
        "13:01 PM", "13"),
    chats(images.chatsimage2, "Simi", "", "Hey bro... How’s it going? Hope",
        "13:01 PM", "2"),
    chats(images.chatsimage3, "Emmanuel", "", "Hey bro... How’s it going? Hope",
        "Tuesday", ""),
    chats(images.chatsimage4, "Chukwuma David", "",
        "Hey bro... How’s it going? Hope", "Wednesday", "")
  ];
  Gonextpage(int index, String pagename) {
    Chats[index].title == "You Never Walk Alone" ? Get.toNamed(pagename) : null;
  }
}
