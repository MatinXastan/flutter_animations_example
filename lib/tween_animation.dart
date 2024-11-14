import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TweenAnim extends StatefulWidget {
  const TweenAnim({super.key});

  @override
  State<TweenAnim> createState() => _TweenAnimState();
}

class _TweenAnimState extends State<TweenAnim>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late final Animation<double> _rotateAnim =Tween<double>(begin: 0,end: 10).animate(_animationController);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.rotate(angle: _rotateAnim.value);
        },
      ),
    )));
  }
}
