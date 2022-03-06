import 'package:business_card/logic/expectations_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FittedTextTile extends StatelessWidget {
  final String content;

  const FittedTextTile({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Provider.of<ExpectationsProvider>(context, listen: false)
          .invertColors(),
      child: Container(
        decoration: BoxDecoration(
          color: Provider.of<ExpectationsProvider>(context).backgroundColor,
          border: Border.all(),
        ),
        child: FittedBox(
          child: Text(
            content,
            style: TextStyle(
                color: Provider.of<ExpectationsProvider>(context).fontColor),
          ),
        ),
      ),
    );
  }
}
