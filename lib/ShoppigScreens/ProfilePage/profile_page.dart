import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:like_button/like_button.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/Provider/profile_provider.dart';

import '../Home/Components/view_profile_list_image.dart';

class ProfilePage extends StatelessWidget {
  late ProfileProvider provider;
  List img = [
    'https://img2.exportersindia.com/product_images/bc-full/dir_152/4546124/lemon-juice-1491899468-2754846.jpeg',
    'https://media.istockphoto.com/photos/green-vegetable-juice-on-rustic-wood-table-picture-id485131020?b=1&k=20&m=485131020&s=170667a&w=0&h=yPL7plAQm_R3bnGMc4gkLGSatMnWEg_tEspEs2eiUzM=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKzp2vv9LsYuzKMySAxPjdhKzv9mSDajE_qMvNqxnBgE8TiEItA34795n-gRcmi3g6GQs&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    provider = context.read<ProfileProvider>();
    return Scaffold(
      backgroundColor: Color(
        0xFF07a181,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: 270),
              padding: EdgeInsets.only(left: 10, top: 10),
              width: 150,
              height: 100,
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(40)),
                  color: Color(0xFFb2d260)),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Smoothies',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.only(bottom: 20),
                  width: 120,
                  height: 270,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(40)),
                      color: Color(0xFFcfe98b)),
                  child: Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                      ),
                      child: Icon(
                        Icons.person,
                        color: Color(0xFF07a181),
                      )),
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 50),
                  decoration: BoxDecoration(
                      color: Color(0xFFd8f0ea),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            itemSize: 22,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                          LikeButton()
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Smoothie\nGreen Power',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(
                                0xFF07a181,
                              ),
                            ),
                          ),
                          Text(
                            '\$234',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF07a181)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Quantity',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Recomended Products',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(
                              0xFF07a181,
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 150,
                        width: double.infinity,
                        child: ListView.builder(
                            itemCount: img.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, i) => GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ProfileList(img[i], i)));
                                  },
                                  child: Container(
                                    clipBehavior: Clip.antiAlias,
                                    margin: EdgeInsets.all(10),
                                    height: 40,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Color(0xFFb2d260), width: 4),
                                      color: Colors.white,
                                    ),
                                    child: Hero(
                                      tag: i,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(img[i]),
                                                fit: BoxFit.cover)),
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                  top: 92, right: 40),
                                              height: 30,
                                              width: 90,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  16)),
                                                  color: Color(0xFFb2d260)),
                                              child: Center(
                                                  child: Text(
                                                'Lime',
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.white,
                                                ),
                                              )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                      ),
                      SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -100,
                  left: 30,
                  right: 30,
                  child: Center(
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://static.toiimg.com/thumb/53629795.cms?imgsize=136928&width=800&height=800')),
                          border:
                              Border.all(color: Color(0xFF07a181), width: 5)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
