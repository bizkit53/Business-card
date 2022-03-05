import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  final String img;

  const ImageTile({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Image.asset(img));
  }
}
