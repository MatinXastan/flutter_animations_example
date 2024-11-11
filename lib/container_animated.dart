import 'package:flutter/material.dart';

class WidgetAnimated extends StatefulWidget {
  const WidgetAnimated({super.key});

  @override
  State<WidgetAnimated> createState() => _WidgetAnimatedState();
}

class _WidgetAnimatedState extends State<WidgetAnimated> {
  bool isDefualtAnimation = true;
  Color color = Colors.pink;
  double borderRadius = 30;
  double height = 100;
  double width = 100;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(padding: EdgeInsets.all(24),
          child: ElevatedButton(onPressed: () {
            setState(() {
              if(isDefualtAnimation){

                color = Colors.blue;
                borderRadius = 90;
                height = 200;
                width = 50;
                isDefualtAnimation = false;
              }else{

                color = Colors.pink;
                borderRadius = 30;
                height = 100;
                width = 100;
                isDefualtAnimation = true;
              }
            });
          }, child: Text('Run')),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),

            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            height: height,
            width: width,
          ),
        ),

      ),
    );
  }
}

//TODO: temple constant
/*


class Temple extends StatefulWidget {
  const Temple({super.key});

  @override
  State<Temple> createState() => _TempleState();
}

class _TempleState extends State<Temple> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(padding: EdgeInsets.all(24),
        child: ElevatedButton(onPressed: () {
          setState(() {

          });
        }, child: Text('Run')),
        ),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
          ),
        ),

      ),
    );
  }
}

 */