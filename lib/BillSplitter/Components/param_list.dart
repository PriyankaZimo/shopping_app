import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ParamList extends StatelessWidget {
  List col = [
    Color(0xFFf0e2fc),
    Color(0xFFf5c6c1),
    Color(0xFFfce4bd),
    Color(0xFFfed4e0),
  ];
  List img = [
    'https://i.pinimg.com/originals/06/8f/e0/068fe08696c03e399b6e3e82f84fb050.png',
    'https://esquimaltmfrc.com/wp-content/uploads/2015/09/flat-faces-icons-circle-woman-9.png',
    'https://cdn-icons-png.flaticon.com/512/219/219990.png',
    'https://cdn-icons-png.flaticon.com/512/146/146035.png',
    'https://cdn-icons-png.flaticon.com/512/219/219961.png',
    'https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-5-512.png'

  ];

  @override
  Widget build(BuildContext context) {
    return  Expanded(
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
                   img[index],),
              ),Text(
                'Anna',
                style: TextStyle(color: Colors.white),
              )
            ],
          )),
    );
  }
}
