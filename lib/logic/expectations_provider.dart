import 'package:flutter/material.dart';

class ExpectationsProvider extends ChangeNotifier {
  Color fontColor;
  Color backgroundColor;
  String expectations;

  ExpectationsProvider({
    required this.expectations,
    this.fontColor = Colors.black,
    this.backgroundColor = Colors.white,
  });

  void invertColors() {
    var temp = backgroundColor;
    backgroundColor = fontColor;
    fontColor = temp;
    notifyListeners();
  }
}
