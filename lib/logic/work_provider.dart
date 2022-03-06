import 'package:flutter/material.dart';
import 'dart:math' as math;

class WorkProvider extends ChangeNotifier {
  String imgSource;
  String position;
  double rotateAngle;

  WorkProvider({
    required this.imgSource,
    required this.position,
    this.rotateAngle = 0,
  });

  void rotate() {
    rotateAngle = (rotateAngle == 0 ? math.pi : 0);
    notifyListeners();
  }
}
