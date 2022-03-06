import 'package:business_card/logic/education_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    return GestureDetector(
      onTap: () => Provider.of<EducationProvider>(context, listen: false)
          .changeBorderShape(),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(
            Provider.of<EducationProvider>(context, listen: false).borderRadius,
          ),
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
                      child: Text(
                        firstCycle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: FittedBox(
                      child: Text(
                        secondCycle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
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
