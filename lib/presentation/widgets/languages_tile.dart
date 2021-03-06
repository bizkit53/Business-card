import 'package:business_card/logic/languages_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LanguagesTile extends StatelessWidget {
  final String firstLangImg;
  final String secondLangImg;
  final String firstLevel;
  final String secondLevel;

  const LanguagesTile({
    Key? key,
    required this.firstLangImg,
    required this.secondLangImg,
    required this.firstLevel,
    required this.secondLevel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Provider.of<LanguageProvider>(context, listen: false).swapPlaces(),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(firstLangImg),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: FittedBox(
                        child: Text(firstLevel),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(secondLangImg),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: FittedBox(
                        child: Text(
                          secondLevel,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
