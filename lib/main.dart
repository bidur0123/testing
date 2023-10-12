import 'package:flutter/material.dart';
import 'package:widget_testing/Black-hole-animation/card_hidden_animation_page.dart';
import 'package:widget_testing/Skeleton_text/skeleton_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CardHiddenAnimationPage(),
    );
  }
}

