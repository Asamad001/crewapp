import 'package:crew_app/Models/all_models..dart';
import 'package:crew_app/Utils/utils.dart.dart';
import 'package:get/get.dart';

class ExploreController extends GetxController {
  List<Places> places = [
    Places(1, "assets/images/place.png", "LA Campagne Tropicana Beach Resort",
        "Lekki, Nigeria"),
    Places(2, "assets/images/place1.jpg", "Lekki Conservation Center",
        "Lekki, Nigeria")
  ];
  List<Events> events = [
    Events(3, "assets/images/events.png", "Hennessy Artistry Concert",
        "December 14"),
    Events(
        4, "assets/images/events1.png", "Flytime Music Festival", "December 30")
  ];

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
  void selectcrew(int index) {
    if (crewlist[index].selected == true) {
      crewlist[index].selected = false;
    } else {
      crewlist[index].selected = true;
    }
    update();
  }

  Gonplacespage(String pagename, int index) {
    Get.toNamed(pagename, arguments: [
      {
        "image": places[index].image,
      },
      {
        "name": places[index].name,
      },
      {
        "place": places[index].place,
      },
    ]);

    update();
  }

  Goeventspage(String pagename, int index) {
    Get.toNamed(pagename, arguments: [
      {
        "image": events[index].image,
      },
      {
        "name": events[index].name,
      },
      {
        "place": events[index].date,
      },
    ]);
    update();
  }
}
