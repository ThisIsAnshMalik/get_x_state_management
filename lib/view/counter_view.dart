import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_state_management/controller/counter_controller.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Obx(
        () {
          return Text(
            counterController.counter.value.toString(),
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counterController.increment();
        },
      ),
    );
  }
}
