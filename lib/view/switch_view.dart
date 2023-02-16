import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_state_management/controller/switch_controller.dart';

class SwitchView extends StatelessWidget {
  SwitchView({Key? key}) : super(key: key);

  SwitchController switchController = Get.put(SwitchController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Notifaction"),
                Obx((() {
                  return Switch(
                      value: switchController.notification.value,
                      onChanged: ((value) {
                        switchController.setNotifaction(value);
                      }));
                }))
              ],
            ),
          )
        ],
      )),
    );
  }
}
