import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_state_management/controller/image_controller.dart';

class ImageView extends StatefulWidget {
  const ImageView({Key? key}) : super(key: key);

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  ImageController imageController = Get.put(ImageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx((() {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                    radius: 40,
                    backgroundImage: imageController.imagePath.isNotEmpty
                        ? FileImage(File(imageController.imagePath.toString()))
                        : null),
              );
            })),
            InkWell(
              onTap: () {
                imageController.getImage();
              },
              child: const Text("Pick Image"),
            )
          ],
        ),
      ),
    );
  }
}
