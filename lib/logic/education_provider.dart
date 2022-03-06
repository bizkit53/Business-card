import 'package:flutter/material.dart';

class EducationProvider extends ChangeNotifier {
  String imgSource;
  String firstCycle;
  String secondCycle;
  double borderRadius;

  EducationProvider({
    required this.imgSource,
    required this.firstCycle,
    required this.secondCycle,
    this.borderRadius = 0,
  });

  void changeBorderShape() {
    borderRadius = (borderRadius == 0 ? 15 : 0);
    notifyListeners();
  }
}
