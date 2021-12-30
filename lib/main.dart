import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:ludo/pages/my_game.dart';
import 'package:ludo/pages/splash_screen.dart';

import 'layers/backgroud_layer.dart';

void main() {
  runApp(
    //MyApp()
    GameWidget(game: MyGame())
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenGame(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
