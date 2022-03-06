import 'package:flutter/material.dart';
import 'dart:math' as math;

class PhotoProvider extends ChangeNotifier {
  double borderWidth;
  Color borderColor;
  String photoImg;

  PhotoProvider({
    required this.photoImg,
    this.borderWidth = 1,
    this.borderColor = Colors.black,
  });

  void modifyBorder() {
    borderWidth = (borderWidth == 1 ? 5 : 1);
    borderColor =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    notifyListeners();
  }
}
