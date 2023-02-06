import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BiscuitList extends StatelessWidget {
  List text = [
    'Bisciut ',
    'Choco ',
    'Gooday ',
    'Cake',
  ];
  List col = [
    Color(0xFFfce4bd),
    Color(0xFFf0e2fc),
    Color(0xFFf5c6c1),
    Color(0xFFf0e2fc),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [ Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(' Biscuit List',style: GoogleFonts.italianno(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
        Container(
          margin: EdgeInsets.all(20),
          height: 200,
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {

                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 3),
                      color: col[index],
                      borderRadius: BorderRadius.circular(20)),
                  height: 100,
                  width: 120,
                  child: Center(
                    child: Text(text[index],
                        style: TextStyle(color: Colors.black, fontSize: 20)),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}