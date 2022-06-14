import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double top;
  final double left;
  final double buttonheight;
  final double buttonwidth;
  final Color Buttoncolor;
  final void Function() onpressed;

  final String text;
  final Color textcolor;

  Button(
      {required this.top,
      required this.left,
      required this.buttonheight,
      required this.buttonwidth,
      required this.Buttoncolor,
      required this.text,
      required this.textcolor,
      required this.onpressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top, left: left),
      child: Container(
        height: buttonheight,
        width: buttonwidth,
        decoration: BoxDecoration(
            color: Buttoncolor, borderRadius: BorderRadius.circular(10)),
        child: MaterialButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: onpressed,
          child: Text(
            text,
            style: TextStyle(
                color: textcolor,
                fontFamily: "Bold",
                fontSize: MediaQuery.of(context).size.width * 0.04),
          ),
        ),
      ),
    );
  }
}
