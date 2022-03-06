import 'package:business_card/logic/work_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

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
    return GestureDetector(
      onTap: () => Provider.of<WorkProvider>(context, listen: false).rotate(),
      child: Transform.rotate(
        angle: Provider.of<WorkProvider>(context).rotateAngle,
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
                        child: Text(position, textAlign: TextAlign.center),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
