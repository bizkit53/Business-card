import 'package:flutter/material.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

class CertificateScreen extends StatelessWidget {
  final String imgSource;

  const CertificateScreen({Key? key, required this.imgSource})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinchZoom(
      child: Image.asset(imgSource),
    );
  }
}
