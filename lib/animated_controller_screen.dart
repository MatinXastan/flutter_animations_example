import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Anime extends StatefulWidget {
  const Anime({super.key});

  @override
  State<Anime> createState() => _AnimeState();
}

class _AnimeState extends State<Anime> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    // _animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  SizedBox(

                    width: 8,
                  ),
                  Text('Posta'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/ronaldo.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Cristiano Ronaldo'),
                  Expanded(child: SizedBox()),
                  Icon(Icons.more_vert_sharp),
                ],
              ),
            ),
            SizedBox(
                width: double.infinity,
                height: 350,
                child: Image.asset(
                  'assets/images/ronaldo.jpg',
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  AnimatedBuilder(
                    animation:CurvedAnimation(parent: _animationController, curve: Curves.bounceInOut),
                    builder: (context, child) {
                      return IconButton(
                        onPressed: () {
                          if (isLiked) {
                            isLiked = false;
                            _animationController.reverse();
                          } else {
                            isLiked = true;
                            if(!_animationController.isCompleted){
                              _animationController.forward();
                            }
                          }
                        },
                        icon:isLiked? Opacity(
                          opacity: _animationController.value !=
                                  _animationController.lowerBound
                              ? _animationController.value
                              : 1,
                          child: Icon(
                            CupertinoIcons.heart_fill,
                            color: Colors.red,
                            size: _animationController.value !=
                                    _animationController.lowerBound
                                ? 32 * _animationController.value
                                : 32,
                          ),
                        ):Opacity(
                          opacity: _animationController.value !=
                              _animationController.lowerBound
                              ? _animationController.value
                              : 1,
                          child: Icon(
                            CupertinoIcons.heart,
                            color: Colors.black,
                            size: _animationController.value !=
                                _animationController.lowerBound
                                ? 32 * _animationController.value
                                : 32,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.conversation_bubble,
                        color: Colors.black, size: 32),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon:
                        Icon(Icons.send_sharp, color: Colors.black, size: 32),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
