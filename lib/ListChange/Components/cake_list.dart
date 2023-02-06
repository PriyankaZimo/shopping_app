import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CakeList extends StatelessWidget {
  List text = [
    'Birth Cake ',
    'Birthday ',
    'Princess ',
    'Aniversary Cake',
  ];
  List col = [
    Colors.white,
    Colors.teal.shade100,
    Colors.red.shade100,
    Color(0xFFfed4e0),
  ];
int select=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(' Cake List',style: GoogleFonts.italianno(fontSize: 40,fontWeight: FontWeight.bold),),
        ),
        Container(
          margin: EdgeInsets.all(20),
          height: 200,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color:Colors.black,width: 3),
                      color: col[index],
                      borderRadius: BorderRadius.circular(20)),
                  height: 100,
                  width: 120,
                  child: Center(
                    child: Text(text[index],
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                ),
            ),
          ),
        ),
      ],
    );
  }
}
