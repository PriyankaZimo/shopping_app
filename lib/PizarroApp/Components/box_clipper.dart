import 'package:flutter/material.dart';

class BoxClipper extends CustomClipper <Path>{
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 170);

    path.quadraticBezierTo(width / 2, height, width, height - 170);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
  return false;
  }

}