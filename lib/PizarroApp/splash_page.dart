import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/PizarroApp/Provider/pizza_provider.dart';

import 'Components/box_clipper.dart';

class SplashPage extends StatelessWidget {
  late PizzaProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = context.read<PizzaProvider>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Consumer<PizzaProvider>(
          builder: (context, val, child) => Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipPath(
                    clipper: BoxClipper(),
                    child: Container(
                      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                      height: 570,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Color(0XFF0b2030)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'pizzario.',
                            style: TextStyle(
                                fontSize: 25,
                                foreground: Paint()
                                  ..shader = const LinearGradient(colors: [
                                    Colors.orange,
                                    Colors.white
                                  ]).createShader(
                                      Rect.fromLTWH(0.0, 100.0, 100.0, 0.0))),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'PIZZA ONLINE DELIVERY',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 70,
                                width: 300,
                                child: ListView.builder(
                                    itemCount: val.item.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) =>
                                        GestureDetector(
                                          onTap: () {
                                            val.select = index;
                                            val.selectcol = index;
                                            val.notifyListeners();
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                right: 20, top: 10),
                                            decoration: BoxDecoration(),
                                            child: Text(
                                              val.item[index],
                                              style: TextStyle(
                                                  color: val.selectcol == index
                                                      ? Colors.white
                                                      : Colors.white24,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        )),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 30),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  bottom: 30,
                                ),
                                child: Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                (Icons.arrow_back_ios_new),
                                color: Colors.white,
                              ),
                              Center(
                                  child: Image.network(
                                'https://www.pngall.com/wp-content/uploads/4/Pepperoni-Dominos-Pizza-PNG-Free-Download.png',
                                scale: 4,
                              )),
                              GestureDetector(
                                  onTap: () {},
                                  child: const Icon(
                                    (Icons.arrow_forward_ios),
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          SizedBox(height: 10),
                          const Center(
                              child: Text(
                            'Pizza Chicken',
                            style: TextStyle(color: Color(0xFFefb331)),
                          )),
                          const SizedBox(
                            height: 5,
                          ),
                          const Center(
                              child: Text(
                            'With Pastery and Feta',
                            style: TextStyle(color: Colors.white),
                          )),
                          const SizedBox(
                            height: 5,
                          ),
                          const Center(
                              child: Text(
                            '\$ 7.5',
                            style: TextStyle(
                                color: Color(0xFFefb331), fontSize: 18),
                          ))
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'FOOD AND MENU',
                      style: TextStyle(fontSize: 18, color: Color(0xFFefb331)),
                    ),
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Popular Today',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFFefb331)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '145 Dishes',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  val.pizzaList()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
