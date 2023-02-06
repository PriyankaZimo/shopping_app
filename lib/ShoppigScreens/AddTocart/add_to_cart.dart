import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF07a181),
      body: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFcfe98b),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(30)),
                  color: Color(0xFFb2d260)),
              child: Center(
                  child: Text(
                'Your cart',
                style: GoogleFonts.italianno(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
