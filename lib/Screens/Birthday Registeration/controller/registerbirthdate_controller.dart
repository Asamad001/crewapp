import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RegisterBirthController extends GetxController {
  DateTime now = new DateTime.now();
  var formatter = new DateFormat('dd-MM-yyyy');
  String date = '';
  bool pickedDate = false;
  final snackBar = SnackBar(
    backgroundColor: Colors.red.shade900,
    duration: Duration(milliseconds: 300),
    content: const Text('Please Select Date of Birth'),
  );

  Future<Null> selectDate(BuildContext context) async {
    DateTime? _datePicker = await showDatePicker(
      context: context,
      initialDate: now,
      // Current Date
      firstDate: DateTime(1950),
      // First Date
      lastDate: DateTime(2050),
      builder: (context, child) => Theme(
        data: ThemeData()
            .copyWith(colorScheme: ColorScheme.light(primary: Colors.black)),
        child: child!,
      ),

      // Last Date
      // textDirection: TextDirection.LTR,
      // Header Text or Button Direction ltr or rtl
      initialDatePickerMode: DatePickerMode.year, // Day or Year Mode
      //   selectableDayPredicate: (DateTime val) =>
      //       val.weekday == 6 || val.weekday == 7 ? false : true, // WeekDay Off
      // selectableDayPredicate: (DateTime val) =>
      //     val.isBefore(val) ? false : true,
    );

    if (_datePicker != null && _datePicker != now) {
      now = _datePicker;
      date = now.year.toString() +
          '-' +
          now.month.toString() +
          '-' +
          now.day.toString();
      pickedDate = true;
      update();
    }
  }

  // ignore: non_constant_identifier_names
  GotoNextpage(String pagename, dynamic context) {
    if (pickedDate == true) {
      Get.toNamed(pagename);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    update();
  }

  Textupdate() {
    if (pickedDate == false) {
      return Text(
        "DD/MM/YY",
        style: TextStyle(color: Colors.white, letterSpacing: 1),
      );
    } else {
      return Text(
        now.day.toString() +
            '-' +
            now.month.toString() +
            '-' +
            now.year.toString(),
        style: TextStyle(color: Colors.white, letterSpacing: 1),
      );
    }

    update();
  }
}
