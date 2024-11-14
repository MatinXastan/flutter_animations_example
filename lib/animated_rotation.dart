import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAnimatedRotation extends StatefulWidget {
  const MyAnimatedRotation({super.key});

  @override
  State<MyAnimatedRotation> createState() => _MyAnimatedRotationState();
}

class _MyAnimatedRotationState extends State<MyAnimatedRotation> {
  double turns = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: Padding(
            padding: EdgeInsets.all(24),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    turns+=1;
                  });
                },
                child: Text('Run')),
          ),
          body: Stack(
            alignment: Alignment.center,

            children: [
              Container(
                color: Colors.black87,

              ),
              AnimatedRotation(turns: turns,
              duration: Duration(seconds: 1),
              child: Image.asset('assets/images/ronaldo.jpg',height: 300,width: 300,)),
            ],
          )),
    );
  }
}
