import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/BurgerApp/Components/burger_detail_page.dart';
import 'package:shopping_app/BurgerApp/Provider/burger_provider.dart';

import '../constant.dart';

class NewProducts extends StatelessWidget {
  late BurgerProvider burgerProvider;

  @override
  Widget build(BuildContext context) {
    burgerProvider = context.read<BurgerProvider>();
    return Container(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'New products',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Material(
                child: PopupMenuButton(
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.grey.shade600,
                    ),
                    itemBuilder: (context) => [
                          PopupMenuItem(child: Text('Smokehouse')),
                          PopupMenuItem(child: Text('Red Chilli')),
                          PopupMenuItem(child: Text('Paneer Sauce'))
                        ]),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Consumer<BurgerProvider>(
              builder: (context, value, child) => Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                        clipBehavior: Clip.none,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            childAspectRatio: 0.6,
                            mainAxisSpacing: 17,
                            crossAxisCount: 2),
                        itemBuilder: (context, index) =>
                            /// Transform
                            Transform.translate(
                              offset: Offset(0.0, index.isOdd ? 30 : 0.0),
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
                                decoration: BoxDecoration(
                                    color: Color(0xFFf5f4f9),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.network(
                                          'https://www.freeiconspng.com/thumbs/flame-png/flame-design-icon-png-28.png',
                                          scale: 25,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          '290',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          'Calories',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                        child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    BurgerDetail(image: image[index],
                                                        burgerText: burgText[index])));
                                      },
                                      child: Hero(
                                        tag: image[index],
                                        child: Container(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Image.network(image[index])),
                                      ),
                                    )),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      burgText[index],
                                      style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      'beef burger',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      '\$132.5',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19),
                                    )
                                  ],
                                ),
                              ),
                            )),
                  )
              //   GridView.builder(
              //   physics: NeverScrollableScrollPhysics(),
              //   itemCount: image.length,
              //   shrinkWrap: true,
              //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              //       maxCrossAxisExtent: 200,
              //       mainAxisExtent: 300,
              //       mainAxisSpacing: 20,
              //       crossAxisSpacing: 20),
              //   itemBuilder: (context, index) =>
              // Transform.translate(
              //         offset: Offset(0.0, index.isOdd ? 30 : 0.0),
              //         child: Container(
              //           padding: EdgeInsets.only(top: 20, left: 10, right: 10),
              //           decoration: BoxDecoration(
              //               color: Color(0xFFf5f4f9),
              //               borderRadius: BorderRadius.circular(20)),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Row(
              //                 children: [
              //                   Image.network(
              //                     'https://www.freeiconspng.com/thumbs/flame-png/flame-design-icon-png-28.png',
              //                     scale: 25,
              //                   ),
              //                   const SizedBox(
              //                     width: 10,
              //                   ),
              //                   const Text(
              //                     '290',
              //                     style: TextStyle(
              //                         fontSize: 13,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                   const SizedBox(
              //                     width: 5,
              //                   ),
              //                   const Text(
              //                     'Calories',
              //                     style: TextStyle(
              //                         fontWeight: FontWeight.bold,
              //                         fontSize: 13),
              //                   )
              //                 ],
              //               ),
              //               const SizedBox(
              //                 height: 20,
              //               ),
              //               Center(
              //                   child: GestureDetector(
              //                 onTap: () {
              //                   Navigator.push(
              //                       context,
              //                       MaterialPageRoute(
              //                           builder: (context) => BurgerDetail(
              //                               image: image[index],
              //                               burgerText: burgText[index])));
              //                 },
              //                 child: Hero(
              //                   tag: image[index],
              //                   child: Container(
              //                       padding: EdgeInsets.only(right: 10),
              //                       child: Image.network(image[index])),
              //                 ),
              //               )),
              //               const SizedBox(
              //                 height: 2,
              //               ),
              //               Text(
              //                 burgText[index],
              //                 style: const TextStyle(
              //                     fontSize: 17, fontWeight: FontWeight.bold),
              //               ),
              //               const Text(
              //                 'beef burger',
              //                 style: TextStyle(color: Colors.grey),
              //               ),
              //               const SizedBox(
              //                 height: 5,
              //               ),
              //               const Text(
              //                 '\$132.5',
              //                 style: TextStyle(
              //                     color: Colors.black,
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 19),
              //               )
              //             ],
              //           ),
              //         ),
              //       )
              ),
        ],
      ),
    );
  }
}
