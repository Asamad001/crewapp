import 'package:flutter/material.dart';

class CrewContainer extends StatelessWidget {
  CrewContainer({
    Key? key,
    required this.border,
    required this.image,
  }) : super(key: key);
  dynamic border;
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: border,
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
