import 'package:flutter/material.dart';

class Backbutton extends StatelessWidget {
  final Color shadow;
  final void Function() onpressed;
  Backbutton(this.shadow, this.onpressed);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.1,
      width: MediaQuery.of(context).size.width * 0.17,
      child: Center(
        child: MaterialButton(
          onPressed: onpressed,
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: shadow,
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset.fromDirection(20))
      ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
    );
  }
}
