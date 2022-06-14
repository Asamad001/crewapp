import 'package:flutter/material.dart';

class texts extends StatelessWidget {
  final String text;
  final Color textcolor;
  const texts(this.text, this.textcolor);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.06,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.045,
              fontFamily: "Regular",
              fontWeight: FontWeight.w600,
              color: textcolor),
        )
      ],
    );
  }
}
