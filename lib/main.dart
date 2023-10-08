import 'package:flutter/material.dart';
import 'package:widget_testing/bike_ui/screens/home_screen.dart';
import 'package:widget_testing/hero_text_animation/screens/home_screen.dart';
import 'package:widget_testing/screen/custom_3d_cube.dart';
import 'package:widget_testing/screen/water_drop_effect.dart';
import 'package:widget_testing/ui_3d/ui_3d.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePageUi(),
    );
  }
}

