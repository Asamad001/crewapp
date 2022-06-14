import 'package:flutter/material.dart';

class text extends StatelessWidget {
  final String texts;
  final Color textcolor;
  const text(this.texts, this.textcolor);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          texts,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.09,
              fontFamily: "Regular",
              fontWeight: FontWeight.w600,
              color: textcolor),
        )
      ],
    );
  }
}
