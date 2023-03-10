import 'package:flutter/material.dart';
import 'package:get_x_state_management/view/Slider_view.dart';
import 'package:get_x_state_management/view/counter_view.dart';
import 'package:get_x_state_management/view/favirate_view.dart';
import 'package:get_x_state_management/view/image_view.dart';
import 'package:get_x_state_management/view/switch_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImageView(),
    );
  }
}
