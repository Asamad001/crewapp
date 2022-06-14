import 'package:flutter/material.dart';
import 'package:get/get.dart';

class textField extends StatelessWidget {
  dynamic readonly = false;
  final String? hinttext;
  var keyboardType;
  final dynamic? underline;
  final dynamic? focusborder;
  final dynamic? textcolor;
  final dynamic validation;
  final dynamic controller;
  final ValueChanged<String>? onChanged;

  textField(
      {this.hinttext,
      this.keyboardType,
      this.underline = Colors.white,
      this.focusborder,
      this.textcolor,
      this.validation,
      this.controller,
      this.readonly,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: Get.width * 0.05,
        ),
        Container(
            height: Get.height * 0.05,
            width: Get.width * 0.9,
            child: TextFormField(
                onChanged: onChanged,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                readOnly: readonly,
                controller: controller,
                validator: validation,
                style: TextStyle(
                    color: textcolor, textBaseline: TextBaseline.ideographic),
                keyboardType: this.keyboardType,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: underline)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: focusborder)),
                  contentPadding: EdgeInsets.only(bottom: 20),
                  hintStyle: TextStyle(
                    color: textcolor,
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                  ),
                  hintText: hinttext,
                ))),
      ],
    );
  }
}
