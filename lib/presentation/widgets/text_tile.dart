import 'package:flutter/material.dart';

class TextTile extends StatelessWidget {
  final String content;

  const TextTile({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FittedBox(
          child: Center(
            child: Text(content),
          ),
        ),
      ),
    );
  }
}
