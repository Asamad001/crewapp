import 'package:crew_app/Widgets/custom_clipper.dart';
import 'package:flutter/material.dart';

class ClipContainer extends StatelessWidget {
  final String image;

  final double texttop;
  final double fontsize;
  final double textleft;
  final String text;
  final int rotate;
  ClipContainer(this.image, this.texttop, this.textleft, this.text, this.rotate,
      this.fontsize);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill)),
          ),
          Positioned(
            top: texttop,
            left: textleft,
            child: RotatedBox(
                quarterTurns: rotate,
                child: Text(
                  text,
                  style: TextStyle(
                    foreground: Paint()
                      ..color = Colors.white
                      ..strokeWidth = 2.0
                      ..style = PaintingStyle.stroke,
                    fontSize: fontsize,
                    fontFamily: "Bold",
                  ),
                )),
          )
        ],
      ),
    );
  }
}
