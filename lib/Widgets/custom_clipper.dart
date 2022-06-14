import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height);
    var controllpoint = Offset(0, size.height * 0.825);
    var endpoint = Offset(size.width * 0.25, size.height * 0.825);

    path.quadraticBezierTo(
      controllpoint.dx,
      controllpoint.dy,
      endpoint.dx,
      endpoint.dy,
    );
    path.lineTo(size.width * 0.77, size.height * 0.825);
    Offset curvepoint2 = Offset(size.width, size.height * 0.8);
    Offset endpoint2 = Offset(size.width, size.height * 0.650);
    path.quadraticBezierTo(
      curvepoint2.dx,
      curvepoint2.dy,
      endpoint2.dx,
      endpoint2.dy,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
