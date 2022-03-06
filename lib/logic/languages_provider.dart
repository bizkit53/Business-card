import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  String firstLangImg;
  String firstLevel;
  String secondLangImg;
  String secondLevel;

  LanguageProvider({
    required this.firstLangImg,
    required this.firstLevel,
    required this.secondLangImg,
    required this.secondLevel,
  });

  void swapPlaces() {
    var temp = firstLangImg;
    firstLangImg = secondLangImg;
    secondLangImg = temp;
    temp = firstLevel;
    firstLevel = secondLevel;
    secondLevel = temp;
    notifyListeners();
  }
}
