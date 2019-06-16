import 'package:flutter/material.dart';

void main() => runApp(
  Center(
    child: LogoFade(),
  )
);

class LogoFade extends StatefulWidget{
   _LogoFadeState createState() => _LogoFadeState();
}

class _LogoFadeState extends State<LogoFade> with TickerProviderStateMixin{
  Animation animation;
  AnimationController controller;

  initState(){
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: 3000), vsync: this
    );
    final CurvedAnimation curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animation = Tween(begin: 0.0, end: 0.9).animate(curve);
    controller.forward();
  } 

  Widget build(BuildContext context){
    return FadeTransition(
      opacity: animation,
      child: Container(
        height: 300.0,
        width: 300.0,
        child: FlutterLogo(),
      ),
    );
  }

  dispose(){
    controller.dispose();
    super.dispose();
  }
}