import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class RegisterimageController extends GetxController {
  final snackBar = SnackBar(
    backgroundColor: Colors.red.shade900,
    duration: Duration(milliseconds: 300),
    content: const Text('Please Select Image'),
  );
  File? image;

  final images = ImagePicker();
  Future getImage() async {
    var Image = await images.getImage(source: ImageSource.gallery);

    image = File(Image!.path);
    update();
  }

  Gonextpage(String pagename, dynamic context) {
    if (image == null) {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      Get.toNamed(pagename);
    }
  }
}
