import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatinHideWidget extends StatefulWidget {
  const AnimatinHideWidget({super.key});

  @override
  State<AnimatinHideWidget> createState() => _AnimatinHideWidgetState();
}

class _AnimatinHideWidgetState extends State<AnimatinHideWidget> {
  double opacity = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(

          padding: const EdgeInsets.all(24),
          child: ElevatedButton(

              onPressed: () {setState(() {
                opacity==0?opacity=1:opacity=0;
              });}, child: Text('Run')),
        ),
        body: Center(
          child: AnimatedOpacity(
            opacity: opacity,
            duration: Duration(milliseconds: 500),
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
