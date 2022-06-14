import 'package:flutter/material.dart';

class TextDescription extends StatelessWidget {
  TextDescription({Key? key, required this.text}) : super(key: key);

  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.28),
      child: Text(
        text,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.04,
          fontFamily: "Regular",
        ),
      ),
    );
  }
}
