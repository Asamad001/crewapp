import 'package:crew_app/Models/all_models..dart';
import 'package:crew_app/Utils/utils.dart.dart';

import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var selectedindex = 0.obs;
  List<OnboardingInfo> onboardingpages = [
    OnboardingInfo(images.infoimage1, Texts.infotitle1, Texts.infodescription1,
        Texts.infoimagetext1),
    OnboardingInfo(images.infoimage2, Texts.infotitle2, Texts.infodescription2,
        Texts.infoimagetext2),
    OnboardingInfo(images.infoimage3, Texts.infotitle3, Texts.infodescription3,
        Texts.infoimagetext3)
  ];
}
