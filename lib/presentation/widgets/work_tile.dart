import 'package:flutter/material.dart';

class WorkTile extends StatelessWidget {
  final String img;
  final String position;

  const WorkTile({
    Key? key,
    required this.img,
    required this.position,
  }) : super(key: key);

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
                      child: Text(position, textAlign: TextAlign.center)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
