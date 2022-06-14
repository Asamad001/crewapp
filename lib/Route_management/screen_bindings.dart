import 'package:crew_app/Controller/Feed_controller.dart';
import 'package:crew_app/Screens/Find%20Crew%20Screen/controller/Findcrew_controller.dart';
import 'package:crew_app/Screens/Select%20Crew%20Screen/controller/SelectCrew_controller.dart';
import 'package:crew_app/Screens/Chats%20Screen/controller/chats_controller.dart';
import 'package:crew_app/Screens/Explore%20Screen/controller/explore_controller.dart';
import 'package:crew_app/Screens/Introduction%20Screen/controller/onboarding_controller.dart';
import 'package:crew_app/Screens/Profile%20Screen/controller/profile_controller.dart';
import 'package:crew_app/Screens/Your%20Interests%20Screen/controller/YourInterest_controller.dart';
import 'package:get/get.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController());
    Get.lazyPut(() => SelectedCrew());
    Get.lazyPut(() => tagscreen());
    Get.lazyPut(() => FindsCrews());
    Get.lazyPut(() => Feedscreen());
    Get.lazyPut(() => ExploreController());
    Get.lazyPut(() => ChatsController());
    Get.lazyPut(() => ProfileController());
  }
}
