import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  TextTitle({Key? key, required this.text}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.08,
          fontFamily: "Regular",
          fontWeight: FontWeight.w600),
    );
  }
}
