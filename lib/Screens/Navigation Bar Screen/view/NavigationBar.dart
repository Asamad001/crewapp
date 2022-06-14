import 'package:crew_app/Controller/Feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBar();
}

class _NavigationBar extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Feedscreen>(
        init: Feedscreen(),
        builder: (controller) {
          return Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                      icon: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: controller.currentindex == 0
                                  ? Colors.black
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.home_outlined,
                            size: 30,
                            color: controller.currentindex == 0
                                ? Colors.white
                                : Colors.black,
                          )),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: controller.currentindex == 1
                                  ? Colors.black
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.explore_outlined,
                            size: 30,
                            color: controller.currentindex == 1
                                ? Colors.white
                                : Colors.black,
                          )),
                      label: "Explore"),
                  BottomNavigationBarItem(
                      icon: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: controller.currentindex == 2
                                  ? Colors.black
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.message_outlined,
                            size: 30,
                            color: controller.currentindex == 2
                                ? Colors.white
                                : Colors.black,
                          )),
                      label: "Chats"),
                  BottomNavigationBarItem(
                      icon: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: controller.currentindex == 3
                                  ? Colors.black
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.person_outline,
                            size: 30,
                            color: controller.currentindex == 3
                                ? Colors.white
                                : Colors.black,
                          )),
                      label: "Profile"),
                ],
                currentIndex: controller.currentindex,
                showUnselectedLabels: true,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.black,
                selectedLabelStyle: TextStyle(fontSize: 10),
                unselectedLabelStyle: TextStyle(fontSize: 10),
                onTap: controller.ontap,
              ),
              body: controller.children[controller.currentindex]);
        });
  }
}
