import 'package:flutter/cupertino.dart';

class AddImage extends StatelessWidget {
  const AddImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFebcfce)),
      child: Image.network(
          'https://icons.iconarchive.com/icons/google/noto-emoji-people-face/1024/10153-man-light-skin-tone-icon.png'),
    );
  }
}
