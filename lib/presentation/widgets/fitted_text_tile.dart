import 'package:flutter/material.dart';

class FittedTextTile extends StatelessWidget {
  final String content;

  const FittedTextTile({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: FittedBox(
        child: Text(content),
      ),
    );
  }
}
