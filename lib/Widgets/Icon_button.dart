import 'package:flutter/material.dart';
import 'package:get/get.dart';

class iconButton extends StatelessWidget {
  final double top;
  final double left;
  final double buttonheight;
  final double buttonwidth;
  final Color Buttoncolor;
  final double Stroke;
  final String text;
  final Color textcolor;
  final String image;
  final Color Strokecolor;
  final void Function() onpressed;

  iconButton(
      this.top,
      this.left,
      this.buttonheight,
      this.buttonwidth,
      this.Buttoncolor,
      this.text,
      this.textcolor,
      this.Stroke,
      this.image,
      this.Strokecolor,
      this.onpressed);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        height: buttonheight,
        width: buttonwidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Buttoncolor,
            border: Border.all(color: Strokecolor, width: Stroke)),
        child: MaterialButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: onpressed,
            child: Row(
              children: [
                Image.asset(
                  image,
                ),
                Text(
                  text,
                  style: TextStyle(
                      color: textcolor,
                      fontFamily: "Bold",
                      fontSize: Get.width * 0.04),
                ),
              ],
            )),
      ),
    );
  }
}
