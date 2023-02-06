import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/ListChange/Provider/list_provider.dart';

class CakeHome extends StatelessWidget{
  late ListProvider provider;

  @override
  Widget build(BuildContext context) {
    provider=context.watch<ListProvider>();
    return Scaffold(
      backgroundColor: Colors.teal.shade400,
      appBar: AppBar(
        title: Text('Cake List'),
        backgroundColor: Colors.teal.shade400,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: 200,
            child: ListView.builder(
              itemCount: provider.item.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    print(index);
                    provider.select = index;
                      provider.col = index;
                      provider.notifyListeners();
                      },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 3),
                        color: provider.select == index
                            ? Colors.teal.shade400
                            : Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    height: 100,
                    width: 120,
                    child: Center(
                      child: Text(provider.item[index],
                          style: TextStyle(
                              color:
                                  provider.select == index ? Colors.white : Colors.black,
                              fontSize: 20)),
                    ),
                  )),
            ),
          ),
         provider.selectCategories()
        ],
      ),
    );
  }

  // selectCategories() {
  //   switch (select) {
  //     case 0:
  //       return CakeList();
  //     case 1:
  //       return PastryList();
  //     case 2:
  //       return BiscuitList();
  //     case 3:
  //       return CakeList();
  //   }
  // }
}
