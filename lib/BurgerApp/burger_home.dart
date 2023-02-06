import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/BurgerApp/Provider/burger_provider.dart';
import 'Components/new_products.dart';
import 'Provider/dropdown_provider.dart';

class BurgerHome extends StatelessWidget {
  late DropDownProvider dropDownProvider;
  var tabController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    dropDownProvider = context.watch<DropDownProvider>();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(
            Icons.segment,
            color: Colors.black,
            size: 30,
          ),
          title: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // DropdownButton(
              //
              //   items: [
              //     DropdownMenuItem(
              //       child: Text('Log Angeles', style: TextStyle(color: Colors.black, fontSize: 18)),
              //     ),
              //
              //   ],
              //   onChanged: (value) {
              //     isselect;
              //   },
              // )

              Text(
                'Log Angeles',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey,
              ),
            ],
          )),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  'Food that',
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  'meets you needs',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Consumer<BurgerProvider>(
                  builder: (context, val, child) =>
                      Container(
                    height: 75,
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                val.select = index;
                                val.notifyListeners();
                              },
                              child: Container(
                                padding: EdgeInsets.only(left: 15, right: 10),
                                margin: EdgeInsets.all(10),
                                height: 20,
                                decoration: BoxDecoration(
                                    color: val.select == index
                                        ? Color(0xFFfed47a)
                                        : Color(0xFFf5f4f9),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black12,
                                                offset: Offset(0, 5),
                                                blurRadius: 10)
                                          ]),
                                      child: Image.network(
                                        val.img[index],
                                        scale: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      val.text[index],
                                      style: const TextStyle(
                                          shadows: [
                                            Shadow(
                                              offset: Offset(1.0, 1.0),
                                              blurRadius: 3.0,
                                              color:
                                                  Color.fromARGB(180, 0, 0, 0),
                                            ),
                                          ],
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    )
                                  ],
                                ),
                              ),
                            )),
                  ),
                ),
                NewProducts(),
              ],
            ),
          ),
        ));
  }
}
