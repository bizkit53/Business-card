import 'package:business_card/logic/photo_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PhotoTile extends StatelessWidget {
  final String img;

  const PhotoTile({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Provider.of<PhotoProvider>(context, listen: false).modifyBorder(),
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Provider.of<PhotoProvider>(context).borderColor,
              width: Provider.of<PhotoProvider>(context).borderWidth,
            ),
          ),
          child: Image.asset(img)),
    );
  }
}
