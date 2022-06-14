import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistergenderController extends GetxController {
  final snackBar = SnackBar(
    backgroundColor: Colors.red.shade900,
    duration: Duration(milliseconds: 300),
    content: const Text('Please Select Gender'),
  );
  Gonextpage(
      bool male, bool female, bool no, String pagename, dynamic context) {
    if (male == true || female == true || no == true) {
      Get.toNamed(pagename);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  // checkbox(dynamic gender, dynamic value, bool gender1, bool gender2) {
  //   gender = value!;
  //   gender1 = false;
  //   gender2 = false;
  //   update();
  // }
}

// class checkboxes extends StatefulWidget {
//   bool Gender;
//   var gender1;
//   var gender2;
//   checkboxes(
//       {required this.Gender, required this.gender1, required this.gender2});

//   @override
//   State<checkboxes> createState() => _checkboxesState();
// }

// class _checkboxesState extends State<checkboxes> {
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       side: BorderSide(color: Colors.white),
//       checkColor: Colors.black,
//       activeColor: Colors.white,
//       value: widget.Gender,
//       onChanged: (value) {
//         setState(() {
//           widget.Gender = value!;
//           widget.gender1 = false;
//           widget.gender2 = false;
//           // if (widget.Gender == true) {
//           //   widget.Gender = value!;
//           //   widget.gender1 = false;
//           //   widget.gender2 = false;
//           // }
//           // } else if (widget.Gender == 'female') {
//           //   widget.Gender = value!;
//           //   widget.gender1 = false;
//           //   widget.gender2 = false;
//           // } else if (widget.Gender == 'no') {
//           //   widget.Gender = value!;
//           //   widget.gender1 = false;
//           //   widget.gender2 = false;
//           // }
//         });
//       },
//     );
//   }
// }
// class checkboxes extends StatelessWidget {
//   checkboxes({required this.value});
//   bool? value;
//   bool male = false;
//   bool female = false;
//   bool no = false;
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       side: BorderSide(color: Colors.white),
//       checkColor: Colors.black,
//       activeColor: Colors.white,
//       value: value,
//       onChanged: (value) {
//         setState(() {
//           no = value!;
//           // male = false;
//           // female = false;
//         });
//       },
//     );
//   }
// }
