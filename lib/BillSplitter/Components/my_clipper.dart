import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    // path.lineTo(size.height,0);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width,0);
    return path;
  }

  @override
  bool shouldReclip(MyClipper oldClipper) {
    return false;
  }

}