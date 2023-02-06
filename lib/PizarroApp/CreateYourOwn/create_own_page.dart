import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/PizarroApp/Components/box_clipper.dart';
import 'package:shopping_app/PizarroApp/Components/view_pizza.dart';
import 'package:shopping_app/PizarroApp/Provider/createown_provider.dart';

class CreateOwn extends StatelessWidget {
  late CreateOwnProvider provider;
  List imag = [
    'https://www.freeiconspng.com/thumbs/pizza-png/pizza-png-15.png',
    'https://images-ni.apache.ie/Products/Original/Half___Half-894.png',
    'https://i.dlpng.com/static/png/515154_preview.png',
    'https://www.picng.com/upload/pizza/png_pizza_15218.png',
    'https://mymarios.com/pystedod/Garden-Pizza-MARIOS-MJ-0088-28.7.2020-online-1.png',
    'https://www.freeiconspng.com/thumbs/pizza-png/pizza-png-15.png',
  ];

  @override
  Widget build(BuildContext context) {
    provider = context.read<CreateOwnProvider>();
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ClipPath(
                  clipper: BoxClipper(),
                  child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 510,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Color(0XFF0b2030)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            BackButton(
                              color: Colors.white,
                            ),
                            Text(
                              'PIZZA MARGHERITA',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.add_shopping_cart,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Color(0xFFefb331),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(
                              'Top Lists',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Consumer<CreateOwnProvider>(
            builder: (context, val, child) => Container(
              margin: EdgeInsets.only(top: 160, left: 10, right: 10),
              child: ListView.builder(
                  itemCount: imag.length,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          val.select = index;
                          val.notifyListeners();
                        },
                        child: Container(
                          height: val.select == index ? 140 : 120,
                          padding: EdgeInsets.all(10),
                          clipBehavior: Clip.none,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(2, 2),
                                    blurRadius: 3),
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(-2, -2),
                                    blurRadius: 3)
                              ],
                              border: Border.all(
                                  color: val.select == index
                                      ? Color(0xFFfed061)
                                      : Colors.transparent,
                                  width: 2)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ViewPizza(imag: imag[index])));
                                },
                                child: Hero(
                                  tag: imag[index],
                                  child: Image.network(
                                    imag[index],
                                    scale: 3,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'Italiano',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text(
                                        'Original',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        '\$22',
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.orange.shade200,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 15,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green,
                                          border: Border.all(
                                              color: Colors.white, width: 1),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '1',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text('1.2m'),
                                      const SizedBox(
                                        width: 70,
                                      ),
                                      Text('10 KACL'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text('Size 😃')
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
            ),
          ),
          Positioned(
            right: 15,
            top: 64,
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                  border: Border.all(color: Colors.white, width: 1)),
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
