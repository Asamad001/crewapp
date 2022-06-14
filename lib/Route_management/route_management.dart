// ignore_for_file: prefer_const_constructors

import 'package:crew_app/Route_management/screen_bindings.dart';
import 'package:crew_app/Route_management/set_route.dart';

import 'package:get/get.dart';

import '../Screens/Birthday Registeration/view/RegisterBirthdate.dart';
import '../Screens/Chats Screen/view/ChatsScreen.dart';
import '../Screens/Code verification Screen/view/CodeVerifyScreen.dart';
import '../Screens/Explore Screen/view/ExploreScreen.dart';
import '../Screens/Feed Add Screen/view/Feedadd.dart';
import '../Screens/Feed Screen/view/FeedScreens.dart';
import '../Screens/Find Crew Screen/view/FindCrew.dart';
import '../Screens/Gender Registeration/view/RegisterGender.dart';
import '../Screens/Get Started Screen/view/GetStart.dart';
import '../Screens/Hangout Screen 1/view/HangoutScreen1.dart';
import '../Screens/Hangout Screen 2/view/HangoutScreen2.dart';
import '../Screens/Hangout Screen 3/view/HangoutScreen3.dart';
import '../Screens/Image Registeration/view/RegisterImage.dart';
import '../Screens/Introduction Screen/view/introScreen.dart';
import '../Screens/Message a person Screen/view/Chats.dart';
import '../Screens/Name Registeration/view/RegisterName.dart';
import '../Screens/Navigation Bar Screen/view/NavigationBar.dart';
import '../Screens/Phone verification Screen/view/RegisterScreen.dart';
import '../Screens/Places Screen/view/Events.dart';
import '../Screens/Profile Screen/view/Profile.dart';
import '../Screens/Select Crew Screen/view/SelectCrew.dart';
import '../Screens/SignIn Screen/view/SignInScreen.dart';
import '../Screens/Signup Screen/view/SignupScreen.dart';
import '../Screens/Splash Screen/view/SplashScreen.dart';
import '../Screens/Talk About Yourself Screen/view/RegisterTalkAboutScreen.dart';
import '../Screens/Your Crew/view/MyCrew.dart';
import '../Screens/Your Interests Screen/view/YourInterest.dart';

class RouteManagement {
  static List<GetPage> getPages() {
    return [
      GetPage(
        name: SplashScreen,
        page: () => Splash(),
      ),
      GetPage(
        name: Onboarding,
        page: () => IntroScreen(),
        binding: ScreenBindings(),
      ),
      GetPage(
          name: GetStarted, page: () => GetStart(), binding: ScreenBindings()),
      GetPage(name: singup, page: () => Signup(), binding: ScreenBindings()),
      GetPage(name: singin, page: () => SignIn(), binding: ScreenBindings()),
      GetPage(
          name: register, page: () => Register(), binding: ScreenBindings()),
      GetPage(
          name: verify, page: () => CodeVerify(), binding: ScreenBindings()),
      GetPage(
          name: regName, page: () => RegisterName(), binding: ScreenBindings()),
      GetPage(
          name: regbirthdate,
          page: () => RegisterBirthdate(),
          binding: ScreenBindings()),
      GetPage(
          name: regGender,
          page: () => RegisterGender(),
          binding: ScreenBindings()),
      GetPage(
          name: regimage,
          page: () => RegisterImage(),
          binding: ScreenBindings()),
      GetPage(
          name: regtalkabout,
          page: () => RegisterTalkAbout(),
          binding: ScreenBindings()),
      GetPage(
          name: selectcrew,
          page: () => SelectCrew(),
          binding: ScreenBindings()),
      GetPage(name: tags, page: () => TagScreen(), binding: ScreenBindings()),
      GetPage(
          name: findcrew, page: () => FindCrew(), binding: ScreenBindings()),
      GetPage(
          name: navigationbar,
          page: () => NavigationBar(),
          binding: ScreenBindings()),
      GetPage(
          name: feedsScreen,
          page: () => FeedsScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: exploreScreen,
          page: () => ExploreScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: chatscreen,
          page: () => ChatsScreen(),
          binding: ScreenBindings()),
      GetPage(
          name: profile,
          page: () => ProfileScreen(
                [],
                [],
              ),
          binding: ScreenBindings()),
      GetPage(
          name: events, page: () => EventScreen(), binding: ScreenBindings()),
      GetPage(name: feedAdd, page: () => FeedAdd(), binding: ScreenBindings()),
      GetPage(name: mycrew, page: () => MyCrew(), binding: ScreenBindings()),
      GetPage(name: chat, page: () => Chats(), binding: ScreenBindings()),
      GetPage(
          name: hangout1,
          page: () => HangoutScreen1(),
          binding: ScreenBindings()),
      GetPage(
          name: hangout2,
          page: () => HangoutScreen2(),
          binding: ScreenBindings()),
      GetPage(
          name: hangout3,
          page: () => HangoutScreen3(),
          binding: ScreenBindings()),
    ];
  }
}
