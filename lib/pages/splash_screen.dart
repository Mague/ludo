import 'package:flame/game.dart';
import 'package:flame_splash_screen/flame_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ludo/pages/my_game.dart';

class SplashScreenGame extends StatefulWidget {
  SplashScreenGame({Key? key}) : super(key: key);

  @override
  _SplashScreenGameState createState() => _SplashScreenGameState();
}

class _SplashScreenGameState extends State<SplashScreenGame> {
  late FlameSplashController controller;

  @override
  void initState(){
    super.initState();
    controller = FlameSplashController(
      fadeInDuration:const Duration(seconds:1),
      fadeOutDuration:const Duration(milliseconds:250),
      waitDuration:const Duration(seconds: 2),
      autoStart:true
    );
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlameSplashScreen(
        showBefore: (BuildContext context) {
          return Text("Before the logo");
        },
        showAfter: (BuildContext context) {
          return Text("After the logo");
       },
       theme: FlameSplashTheme.white,
        onFinish: (context) => Navigator.pushReplacement<void,void>(
          context,
          //MaterialPageRoute(builder:  GameWidget(game: MyGame()))
          MaterialPageRoute(builder: (context) => GameWidget(game: MyGame()))
        ),
        controller: controller,
      ),
    );
  }
}