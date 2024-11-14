import 'package:flutter/material.dart';

class MoveAnimation extends StatefulWidget {
  const MoveAnimation({super.key});

  @override
  State<MoveAnimation> createState() => _WidgetAnimatedState();
}

class _WidgetAnimatedState extends State<MoveAnimation> {
  double bottom = 0;
  double letf = 150;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: Padding(
            padding: EdgeInsets.all(24),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    bottom += 30;
                    // letf += 30;
                  });
                },
                child: Text('Run')),
          ),
          body: Stack(
            children: [
              Container(
                color: Colors.black87,
              ),
              AnimatedPositioned(
                curve: Curves.bounceInOut,
                  bottom: bottom,
                  left: letf,
                  duration: Duration(seconds: 1),
                  child: Image.asset(
                    'assets/images/ronaldo.jpg',
                    height: 100,
                    width: 100,
                  ))
            ],
          )),
    );
  }
}
