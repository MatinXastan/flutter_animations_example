import 'package:annimatins/animated_controller_screen.dart';
import 'package:annimatins/animated_rotation.dart';
import 'package:annimatins/animation_hide_widget.dart';
import 'package:annimatins/container_animated.dart';
import 'package:annimatins/move_animation.dart';
import 'package:annimatins/my_animated_scale.dart';
import 'package:annimatins/tween_animation.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TweenAnim()
    );
  }
}
