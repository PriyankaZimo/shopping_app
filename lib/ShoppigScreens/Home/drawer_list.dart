import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerList extends StatelessWidget {
  List item = ['Profile', 'Message', "Promotions", 'Favourite', 'Categories'];
  List icon = [
    Icons.person,
    Icons.mail_outline_outlined,
    Icons.delete_outline_outlined,
    Icons.favorite_border,
    Icons.category_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Color(0xFFd8f0ea),
      ),
      child: SingleChildScrollView(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(50)),
                      color: Color(0xFFcfe98b)),
                  child: Container(
                      margin: EdgeInsets.only(
                          left: 60, top: 20, right: 8, bottom: 5),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Icon(
                        Icons.person,
                        color: Color(0xFF5db36d),
                        size: 30,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'Remo',
                    style: GoogleFonts.italianno(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF07a181)),
                  ),
                )
              ],
            ),
            Container(
              height: 560,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Container(
                  height: 50,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left: 30),
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            icon[index],
                            color: Color(0xFF07a181),
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            item[index],
                            style: GoogleFonts.italianno(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                color: Color(0xFF07a181)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
                color: Color(0xFFcfe98b),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    height: 180,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(30)),
                        color: Color(0xFF07a181)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(top: 200),
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(30)),
                        color: Color(0xFFb2d260)),
                    child: Text(
                      'Smoofy',
                      style: GoogleFonts.italianno(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
