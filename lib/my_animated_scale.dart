import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAnimatedScale extends StatefulWidget {
  const MyAnimatedScale({super.key});

  @override
  State<MyAnimatedScale> createState() => _MyAnimatedScaleState();
}

class _MyAnimatedScaleState extends State<MyAnimatedScale> {
  double scale = 2;
  bool click = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(24),
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (click) {
                    click = false;
                    scale--;
                  } else {
                    click = true;
                    scale++;
                  }
                });
              },
              child: Text('Run')),
        ),
        body: Center(
          child: AnimatedScale(
              scale: scale,
              curve: click ? Curves.bounceIn : Curves.bounceInOut,
              duration: Duration(seconds: 1),
              child: Image.asset(
                "assets/images/ronaldo.jpg",
                height: 300,
                width: 300,
              )),
        ),
      ),
    );
  }
}
