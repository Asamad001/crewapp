import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  NotificationButton(
      {Key? key,
      required this.height,
      required this.width,
      required this.onpressed})
      : super(key: key);
  double height;
  double width;
  void Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onpressed,
          child: Container(
              margin: EdgeInsets.only(top: 5),
              height: height,
              width: width,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset.fromDirection(0))
              ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  Center(child: Icon(Icons.notifications_none_outlined)),
                  Padding(
                    padding: const EdgeInsets.only(left: 17, top: 10),
                    child: CircleAvatar(
                      backgroundColor: Color(0xffFF3C5E),
                      radius: 4,
                    ),
                  )
                ],
              )),
        ),
      ],
    );
  }
}
