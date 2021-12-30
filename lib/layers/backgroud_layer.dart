import 'package:flame/game.dart';
import 'package:flame/layers.dart';
import 'package:flame/sprite.dart';
import 'package:ludo/layers/map_positions.dart';

class BackgroundLayer extends PreRenderedLayer {
  final Sprite box,
      boxTwo,
      boxThree,
      boxFour,
      houses,
      house,
      houseTwo,
      houseThree,
      houseFour;
  double initialX = 50;
  double initialY = 300.0;
  double initialBoxSize = 30.0;
  BackgroundLayer(
      this.viewPortResolution,
      this.box,
      this.boxTwo,
      this.boxThree,
      this.boxFour,
      this.houses,
      this.house,
      this.houseTwo,
      this.houseThree,
      this.houseFour);
  MapPositions map = MapPositions();
  double housePositionX = 0.0;
  double housePositionY = 0.0;

  final Vector2? viewPortResolution;
  @override
  void drawLayer() {
    initialY = viewPortResolution!.y / 2;
    print(viewPortResolution!.x);
    if (viewPortResolution!.x < 800) {
      initialX = 0 + (viewPortResolution!.x / 6);
    } else {
      initialX = 0 + (viewPortResolution!.x / 3);
    }

    double position = 0.0;

    for (int i = 0; i < 6; i++) {
      position = initialX + (initialBoxSize * i + 1);
      map.addBox(position, initialY, "map_side_one");
      box.render(
        canvas,
        position: Vector2(position, initialY),
        size: Vector2(initialBoxSize, initialBoxSize),
      );
    }

    Vector2 house_position=Vector2(position - (initialBoxSize * 4.5), initialY - (initialY / 2));
    house.render(
      canvas,
      position:
          house_position,
      size: Vector2(initialBoxSize * 5, initialBoxSize * 5),
    );
    housePositionX= house_position.x + initialBoxSize;
    housePositionY= house_position.y+initialBoxSize;
    print(housePositionX);
    print(housePositionY);
    houses.render(
      canvas,
      position: Vector2(position + initialBoxSize, initialY),
      size: Vector2(initialBoxSize * 3, initialBoxSize * 3),
    );
    //change next initial position draw
    initialX = position + initialBoxSize;
    double initialPositionTwo = initialY - (initialBoxSize);
    for (int i = 0; i < 6; i++) {
      position = initialPositionTwo - (initialBoxSize * i + 1);
      map.addBox(initialX, position, "map_side_two");
      box.render(
        canvas,
        position: Vector2(initialX, position),
        size: Vector2(initialBoxSize, initialBoxSize),
      );
    }

    //draw top medium map_house_player_two
    initialY = position;
    initialX = initialX + initialBoxSize;
    double initialPositionTrhee = initialY;
    for (int i = 0; i < 6; i++) {
      position = initialPositionTrhee + (initialBoxSize * i + 1);
      map.addBox(initialX, position, "map_house_player_two");
      boxTwo.render(
        canvas,
        position: Vector2(initialX, position),
        size: Vector2(initialBoxSize, initialBoxSize),
      );
    }
    houseTwo.render(
      canvas,
      position:
          Vector2(initialX + (initialBoxSize * 2.5), initialY + (initialY / 8)),
      size: Vector2(initialBoxSize * 5, initialBoxSize * 5),
    );

    initialX = initialX + initialBoxSize;
    double initialPositionTrheeB = initialY;
    for (int i = 0; i < 6; i++) {
      position = initialPositionTrheeB + (initialBoxSize * i + 1);
      map.addBox(initialX, position, "map_side_three");
      boxTwo.render(
        canvas,
        position: Vector2(initialX, position),
        size: Vector2(initialBoxSize, initialBoxSize),
      );
    }

    initialY = position + initialBoxSize;
    double initialPositionFour = initialX + initialBoxSize;
    for (int i = 0; i < 6; i++) {
      position = initialPositionFour + (initialBoxSize * i + 1);
      map.addBox(position, initialY, "map_side_four");
      boxTwo.render(
        canvas,
        position: Vector2(position, initialY),
        size: Vector2(initialBoxSize, initialBoxSize),
      );
    }
    //draw top medium map_house_player_two
    initialY = initialY + initialBoxSize;
    initialX = initialX + initialBoxSize;
    double initialPositionHouseThree = initialX;
    for (int i = 0; i < 6; i++) {
      position = initialPositionHouseThree + (initialBoxSize * i + 1);
      map.addBox(position, initialY, "map_house_player_three");
      boxThree.render(
        canvas,
        position: Vector2(position, initialY),
        size: Vector2(initialBoxSize, initialBoxSize),
      );
    }

    houseThree.render(
      canvas,
      position:
          Vector2(initialX + (initialBoxSize/2), initialY + (initialY / 5)),
      size: Vector2(initialBoxSize * 5, initialBoxSize * 5),
    );

    //draw top medium map_house_player_two
    initialY = initialY + initialBoxSize;

    double initialPositionHouseThreeB = initialX;
    for (int i = 0; i < 6; i++) {
      position = initialPositionHouseThreeB + (initialBoxSize * i + 1);
      map.addBox(position, initialY, "map_side_five");
      boxThree.render(
        canvas,
        position: Vector2(position, initialY),
        size: Vector2(initialBoxSize, initialBoxSize),
      );
    }
    //draw top medium map_house_player_two
    initialY = initialY + initialBoxSize;
    initialX = initialX - initialBoxSize;
    double tempPosition = initialY;
    for (int i = 0; i < 6; i++) {
      position = tempPosition + (initialBoxSize * i + 1);
      map.addBox(initialX, tempPosition, "map_side_five");
      boxThree.render(
        canvas,
        position: Vector2(initialX, position),
        size: Vector2(initialBoxSize, initialBoxSize),
      );
    }

    //initialY = initialY + initialBoxSize;
    initialX = initialX - initialBoxSize;
    tempPosition = initialY;
    for (int i = 0; i < 6; i++) {
      position = tempPosition + (initialBoxSize * i + 1);
      map.addBox(initialX, tempPosition, "map_side_five");
      boxFour.render(
        canvas,
        position: Vector2(initialX, position),
        size: Vector2(initialBoxSize, initialBoxSize),
      );
    }

    
    initialX = initialX - initialBoxSize;
    tempPosition = initialY;
    for (int i = 0; i < 6; i++) {
      position = tempPosition + (initialBoxSize * i + 1);
      map.addBox(initialX, tempPosition, "map_side_five");
      boxFour.render(
        canvas,
        position: Vector2(initialX, position),
        size: Vector2(initialBoxSize, initialBoxSize),
      );
    }
    

    houseFour.render(
      canvas,
      position:
          Vector2(initialX - (initialBoxSize *6), initialY + initialBoxSize/2),
      size: Vector2(initialBoxSize * 5, initialBoxSize * 5),
    );

    //initialX=initialX- initialBoxSize;
    //initialY = initialY + initialBoxSize;
    initialY = initialY - initialBoxSize;
    tempPosition = initialX;
    for (int i = 0; i < 6; i++) {
      tempPosition = tempPosition - (initialBoxSize);
      map.addBox(tempPosition, initialY, "map_side_five");
      boxFour.render(
        canvas,
        position: Vector2(tempPosition, initialY),
        size: Vector2(initialBoxSize, initialBoxSize),
      );
    }
    
    initialY = initialY - initialBoxSize;
    tempPosition = initialX;
    for (int i = 0; i < 6; i++) {
      tempPosition = tempPosition - (initialBoxSize);
      map.addBox(tempPosition, initialY, "map_side_five");
      box.render(
        canvas,
        position: Vector2(tempPosition, initialY),
        size: Vector2(initialBoxSize, initialBoxSize),
      );
    }
  }
}
