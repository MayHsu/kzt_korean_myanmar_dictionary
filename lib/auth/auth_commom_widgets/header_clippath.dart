import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final Path path = Path();

    path.lineTo(0.0, h - 60);
    path.quadraticBezierTo(w / 2, h, w, h - 60);
    path.lineTo(w, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}