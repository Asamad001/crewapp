import 'package:crew_app/Route_management/route_management.dart';
import 'package:crew_app/Route_management/screen_bindings.dart';
import 'package:crew_app/Route_management/set_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: SplashScreen,
    getPages: RouteManagement.getPages(),
    initialBinding: ScreenBindings(),
  ));
}
