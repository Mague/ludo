import 'package:ludo/layers/box.dart';

class MapPositions{
  List<Box> _boxs=[];
  List<Box> get boxs => _boxs;

  void addBox(double x,double y,String tag) {
    _boxs.add(Box(x, y, tag));
  }
}