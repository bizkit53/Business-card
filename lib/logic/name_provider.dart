import 'package:flutter/material.dart';
import 'dart:math' as math;

class NameProvider extends ChangeNotifier {
  String name;
  Color fontColor;

  NameProvider({
    required this.name,
    this.fontColor = Colors.black,
  });

  void changeFontColor() {
    fontColor =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    notifyListeners();
  }
}
