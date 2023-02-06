import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/Provider/profile_provider.dart';

import '../AddTocart/add_to_cart.dart';
import '../ProfilePage/profile_page.dart';
import 'home_page.dart';

class ShoppingHome extends StatefulWidget {
  @override
  State<ShoppingHome> createState() => _ShoppingHomeState();
}

class _ShoppingHomeState extends State<ShoppingHome> {
  int pos = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: getMyPage()),
          Container(
            margin: EdgeInsets.all(10),
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFd8f0ea),
                      offset: Offset(5, 5),
                      blurRadius: 5),
                  BoxShadow(
                      color: Color(0xFFd8f0ea),
                      offset: Offset(5, -5),
                      blurRadius: 5)
                ],
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      pos = 0;
                    });
                  },
                  icon: Icon(
                    Icons.home_filled,
                    color: pos == 0 ? Color(0xFF96c16b) : Color(0xFF07a181),
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      pos = 1;
                    });
                  },
                  icon: Icon(
                    Icons.person,
                    color: pos == 1 ? Color(0xFF96c16b) : Color(0xFF07a181),
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      pos = 2;
                    });
                  },
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: pos == 2 ? Color(0xFF96c16b) : Color(0xFF07a181),
                    size: 30,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  getMyPage() {
    print(pos);
    switch (pos) {
      case 0:
        return HomePage();
      case 1:
        return ChangeNotifierProvider(
            create: (context) => ProfileProvider(), child: ProfilePage());
      case 2:
        return AddToCart();
    }
  }
}
