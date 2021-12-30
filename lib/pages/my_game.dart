import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:ludo/layers/backgroud_layer.dart';
import 'package:ludo/layers/game_layer.dart';

class MyGame extends FlameGame with FPSCounter {
  late NineTileBox nineTileBox;
  late BackgroundLayer backgroundLayer;
  late GameLayer gameLayer;
  Vector2 viewPortResolution = Vector2(0, 0);
  @override
  onLoad() async {
    await super.onLoad();
    final spireSquareGreen = Sprite(await images.load("cuadro_verdehdpi.png"));
    final spireSquareBlue =
        Sprite(await images.load("cuadro_azulhdpi.png"));
    final spireSquareRed = Sprite(await images.load("cuadro_rojohdpi.png"));
    final spireSquareYellow = Sprite(await images.load("cuadro_amarillohdpi.png"));
    final spritHouses= Sprite(await images.load("llegadahdpi.png"));
    
    final spritHouseGreen= Sprite(await images.load("casa_verdehdpi.png"));
    final spritHouseBlue= Sprite(await images.load("casa_azulhdpi.png"));
    final spritHouseRed= Sprite(await images.load("casa_rojahdpi.png"));
    final spritHouseYellow= Sprite(await images.load("casa_amarillahdpi.png"));
    final spritPlayer= Sprite(await images.load("ficha_verdehdpi.png"));
    
    nineTileBox = NineTileBox(spireSquareGreen, tileSize: 8, destTileSize: 24);

    camera.viewport = FixedResolutionViewport(viewPortResolution);

    camera.setRelativeOffset(Anchor.topLeft);
    backgroundLayer = BackgroundLayer(camera.viewport.canvasSize,
        spireSquareGreen, spireSquareBlue, spireSquareRed, spireSquareYellow,
        spritHouses,spritHouseGreen,spritHouseBlue,spritHouseRed,spritHouseYellow);
    
    gameLayer=GameLayer(spritPlayer, backgroundLayer.initialBoxSize, backgroundLayer.housePositionX, backgroundLayer.housePositionY);
  }

  static final fpsTextPaint = TextPaint(
    style: const TextStyle(color: Color(0xFFFFFFFF)),
  );
  @override
  void render(Canvas canvas) {
    super.render(canvas);
    backgroundLayer.render(canvas);
    gameLayer.render(canvas);
    if (debugMode) {
      fpsTextPaint.render(canvas, fps(120).toString(), Vector2(0, 50));
    }
  }

  @override
  Color backgroundColor() => const Color(0xFF38607C);

  @override
  bool debugMode = true;
}
