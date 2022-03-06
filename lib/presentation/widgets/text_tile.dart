import 'package:business_card/logic/name_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextTile extends StatelessWidget {
  final String content;

  const TextTile({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Provider.of<NameProvider>(context, listen: false).changeFontColor(),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FittedBox(
            child: Center(
              child: Text(
                content,
                style: TextStyle(
                  color: Provider.of<NameProvider>(context).fontColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
