import 'package:flame/components.dart';
import 'package:flame/layers.dart';
import 'package:ludo/layers/player.dart';

class GameLayer extends DynamicLayer{
  final Sprite player;
  final double initialPlayersSize;
  final double initialPlayerX;
  final double initialPlayerY;
  List<Player> players=[];
  GameLayer(this.player, this.initialPlayersSize, this.initialPlayerX, this.initialPlayerY){
    //preProcessors.add(ShadowProcessor());
    Player playerInstance=Player(1,player,initialPlayerX, initialPlayerY);
    players.add(playerInstance);
    Player playerInstanceTwo=Player(1,player,initialPlayerX+(initialPlayersSize*2), initialPlayerY);
    players.add(playerInstanceTwo);
    Player playerInstanceThree=Player(1,player,initialPlayerX, initialPlayerY+ (initialPlayersSize*2));
    players.add(playerInstanceThree);
    Player playerInstanceFour=Player(1,player,initialPlayerX + (initialPlayersSize * 2), initialPlayerY+ (initialPlayersSize*2));
    players.add(playerInstanceFour);
    //players.add(player);
  }
  
  @override
  void drawLayer() {
    players.forEach((player) { 
      player.sprit.render(
        canvas,
        position:Vector2(player.x, player.y),
        size:Vector2.all(initialPlayersSize),
      );
    });
    /* for(int i = 0; i < players.length;i++){  
      players[i].render(
        canvas,
        position:Vector2(initialPlayerX, initialPlayerY),
        size:Vector2.all(initialPlayersSize),
      );
    } */
  }

}