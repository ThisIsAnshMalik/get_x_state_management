import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_state_management/controller/slider_controller.dart';

class SliderView extends StatefulWidget {
  const SliderView({Key? key}) : super(key: key);

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  SliderController sliderController = Get.put(SliderController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx((() {
              return Container(
                height: 100,
                width: 100,
                color: Colors.red.withOpacity(sliderController.slider.value),
              );
            })),
            Obx((() {
              return Slider(
                  value: sliderController.slider.value,
                  onChanged: ((value) {
                    sliderController.setSlider(value);
                  }));
            }))
          ],
        ),
      ),
    );
  }
}
