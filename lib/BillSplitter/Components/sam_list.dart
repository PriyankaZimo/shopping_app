import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SamList extends StatelessWidget {
  List img = [
    'https://cdn-icons-png.flaticon.com/512/219/219961.png',
    'https://esquimaltmfrc.com/wp-content/uploads/2015/09/flat-faces-icons-circle-woman-7.png',
    'https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-5-512.png',
    'https://www.pngmart.com/files/21/Admin-Profile-PNG-Clipart.png',
    'https://cdn-icons-png.flaticon.com/512/219/219961.png',
    'https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-5-512.png'

  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: img.length,
          itemBuilder: (context, index) => Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 50,
                    width: 50,
                    child: Image.network(
                      img[index],
                    ),
                  ),
                  Text(
                    'Arg',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )),
    );
  }
}
