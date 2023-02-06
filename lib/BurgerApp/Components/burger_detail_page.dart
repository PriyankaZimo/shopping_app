import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:shopping_app/BurgerApp/constant.dart';

class BurgerDetail extends StatelessWidget {
  String image, burgerText;

  BurgerDetail({
    required this.image,
    required this.burgerText,
  });


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://www.freeiconspng.com/thumbs/flame-png/flame-design-icon-png-28.png',
              scale: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '290 Calories',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: LikeButton(
                // circleColor: const CircleColor(
                //     start: Color(0xff00ddff),
                //     end: Color(0xff0099cc)),
                bubblesColor: const BubblesColor(
                  dotPrimaryColor: Colors.white,
                  dotSecondaryColor: Color(0xFFfed37b),
                ),
                likeBuilder: (bool isLiked) {
                  return Icon(
                    Icons.favorite,
                    size: 30,
                    color: isLiked ? Color(0xFFfed37b) : Colors.grey,
                  );
                },
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Hero(
                    tag: image,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(image), fit: BoxFit.fill)),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: (BoxDecoration(
                      color: Color(0xFFf5f4f9),
                      borderRadius: BorderRadius.circular(40),
                    )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                        Text(
                          '1',
                          style: TextStyle(fontSize: 25),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, top: 20, right: 20),
                  child: Row(
                    children: [
                      Text(
                        burgerText,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        '\$12.99',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'beef burger',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Ingredients',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 30),
                  height: 90,
                  child: ListView.builder(
                      itemCount: ingredImage.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Container(
                            padding: EdgeInsets.all(17),
                            margin: EdgeInsets.all(10),
                            height: 150,
                            width: 70,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.network(
                              ingredImage[index],
                            ),
                          )),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Details',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'The Most Unique big Burger or menu \n After the many  years was very delecious,The Most Unique he Most Unique  ',
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              left: 60,
              right: 50,
              child: Center(
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF131a2c)),
                  child: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
