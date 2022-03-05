import 'package:flutter/material.dart';

class EducationTile extends StatelessWidget {
  final String img;
  final String firstCycle;
  final String secondCycle;

  const EducationTile(
      {Key? key,
      required this.img,
      required this.firstCycle,
      required this.secondCycle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(img),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  child: FittedBox(
                      child: Text(firstCycle, textAlign: TextAlign.center)),
                ),
                Expanded(
                  child: FittedBox(
                    child: Text(
                      secondCycle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
