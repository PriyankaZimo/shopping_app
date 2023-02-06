import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/PizarroApp/Provider/pizza_provider.dart';

import '../CreateYourOwn/create_own_page.dart';

class PizzaPage extends StatelessWidget {
  late PizzaProvider provider;
  List imag = [
    'https://www.pikpng.com/pngl/b/530-5301391_frozen-pizza-all-grown-up-california-style-pizza.png',
    'https://www.freepnglogos.com/uploads/pizza-png/pizza-images-download-pizza-17.png',
    'https://www.freepnglogos.com/uploads/pizza-png/pizza-images-download-pizza-17.png',
    'https://pngimg.com/uploads/pizza/pizza_PNG7108.png'
  ];
  List text = ['Salmon', 'Apprepite', 'Cheesy', 'Paneer'];

  @override
  Widget build(BuildContext context) {
    provider = context.watch<PizzaProvider>();
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                itemCount: imag.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    provider.seletmenuList = index;
                    provider.selIcon = index;
                    provider.notifyListeners();
                  },
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 220,
                            width: 150,
                            padding: EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            margin: EdgeInsets.only(left: 10, top: 10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: provider.seletmenuList == index
                                        ? Color(0xFFfed061)
                                        : Colors.transparent,
                                    width: 3),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(
                                        -3,
                                        -3,
                                      ),
                                      blurRadius: 3),
                                  BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(
                                        3,
                                        3,
                                      ),
                                      blurRadius: 3)
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Center(child: Image.network(imag[index])),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  text[index],
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Pizza',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Size L',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Spacer(),
                                    Text(
                                      '864',
                                      style:
                                          TextStyle(color: Color(0xFFefb331)),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Size L',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Spacer(),
                                    Text(
                                      '864',
                                      style:
                                          TextStyle(color: Color(0xFFefb331)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                          left: 139,
                          top: -2,
                          child: Icon(
                            provider.selIcon == index
                                ? Icons.check_circle
                                : Icons.add_circle_outlined,
                            color: provider.selIcon == index
                                ? Colors.green
                                : Color(0xFFefb331),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'SALAD',
                style: TextStyle(color: Color(0xFFefb331)),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Trending',
                  style: TextStyle(),
                )),
          ],
        ),
        Positioned(
            left: 40,
            right: 40,
            bottom: 3,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreateOwn()));
                },
                child: Container(
                  height: 45,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0XFF0b2030)),
                  child: Center(
                      child: Text(
                    'Create Your Own',
                    style: TextStyle(color: Color(0xFFefb331), fontSize: 16),
                  )),
                ),
              ),
            ))
      ],
    );
  }
}
