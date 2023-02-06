import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'Components/special_list_image.dart';
import 'drawer_list.dart';

class HomePage extends StatelessWidget {
  bool load = false;
  var scaffKey = GlobalKey<ScaffoldState>();
  List imag = [
    'https://thumbs.dreamstime.com/b/lemon-juice-fresh-mint-glass-wooden-background-44544296.jpg',
    'https://images.absolutdrinks.com/ingredient-images/Raw/Absolut/c9b31b0d-ed32-4125-b0e0-430e861d015f.jpg?imwidth=500',
    'https://images.absolutdrinks.com/ingredient-images/Raw/Absolut/c9b31b0d-ed32-4125-b0e0-430e861d015f.jpg?imwidth=500'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffKey,
      backgroundColor: const Color(0xFFd8f0ea),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(50)),
                      color: Color(0xFFcfe98b)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person_outline,
                              color: Color(0xFF5db36d),
                              size: 50,
                            )),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: GestureDetector(
                    onTap: () {
                      scaffKey.currentState!.openDrawer();
                    },
                    child: Container(
                      height: 115,
                      width: 170,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(40)),
                          color: Color(0xFFb2d260)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50, left: 30),
                        child: Text(
                          'Smoofy',
                          style: GoogleFonts.italianno(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 5),
                            blurRadius: 5)
                      ]),
                  child: Image.network(
                    'https://www.pngkit.com/png/full/887-8879262_472-x-980-1-coffee-cup-png-icon.png',
                    scale: 25,
                    color: Color(0xFF07a181),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Smoothies',
                  style: GoogleFonts.italianno(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF07a181)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 35),
              child: Text(
                'Specialities',
                style: GoogleFonts.italianno(
                    color: Color(0xFF07a181),
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              child: ListView.builder(
                itemCount: imag.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SpecialList(imag[index], index)));
                  },
                  child: Hero(
                    tag: index,
                    child: Container(
                        margin: EdgeInsets.only(
                          left: 30,
                        ),
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(imag[index]),
                              fit: BoxFit.cover),
                          border:
                              Border.all(color: Color(0xFF07a181), width: 4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 105),
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Color(0xFF159980),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  'Lemon',
                                  style: GoogleFonts.italianno(
                                      fontSize: 35,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25,
              ),
              child: Text(
                'All Products',
                style: GoogleFonts.italianno(
                    color: Color(0xFF07a181),
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
            ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            margin: EdgeInsets.all(15),
                            height: 120,
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://images.absolutdrinks.com/ingredient-images/Raw/Absolut/c9b31b0d-ed32-4125-b0e0-430e861d015f.jpg?imwidth=500"),
                                  fit: BoxFit.fill),
                              border: Border.all(
                                  color: Color(0xFFb4d261), width: 3),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 55),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Smoothie',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF07a181),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Dessert',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF07a181),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '45,99',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF07a181),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: LikeButton(
                                circleColor: const CircleColor(
                                    start: Color(0xff00ddff),
                                    end: Color(0xff0099cc)),
                                bubblesColor: const BubblesColor(
                                  dotPrimaryColor: Colors.white,
                                  dotSecondaryColor: Color(0xff0099cc),
                                ),
                                likeBuilder: (bool isLiked) {
                                  return Icon(
                                    Icons.favorite,
                                    size: 30,
                                    color: isLiked
                                        ? Color(0xFF07a181)
                                        : Colors.grey,
                                  );
                                },
                                // likeCount: 665,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(
                                Icons.star,
                                color: Colors.green.shade700,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
          ],
        ),
      ),
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(50), bottomRight: Radius.circular(40)),
        child: DrawerList(),
      ),
    );
  }
}
