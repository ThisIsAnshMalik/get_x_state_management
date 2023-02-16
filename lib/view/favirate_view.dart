import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_state_management/controller/favirate_controller.dart';

class FavirateView extends StatefulWidget {
  const FavirateView({Key? key}) : super(key: key);

  @override
  State<FavirateView> createState() => _FavirateViewState();
}

class _FavirateViewState extends State<FavirateView> {
  FavirateController favirateController = Get.put(FavirateController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: favirateController.fruits.length,
        itemBuilder: (context, index) {
          return ListTile(onTap: () {
            if (favirateController.favirate
                .contains(favirateController.fruits[index])) {
              favirateController
                  .removeFavirate(favirateController.fruits[index]);
            } else {
              favirateController.setFavirate(favirateController.fruits[index]);
            }
          }, title: Obx((() {
            return Text(favirateController.fruits[index]);
          })), trailing: Obx((() {
            if (favirateController.favirate
                .contains(favirateController.fruits[index])) {
              return const Icon(Icons.favorite);
            } else {
              return const Icon(Icons.favorite_border_outlined);
            }
          })));
        },
      ),
    );
  }
}
