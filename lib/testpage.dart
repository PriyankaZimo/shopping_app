import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/testprovider.dart';

class TestPage extends StatelessWidget {
 late TestProvider testProvider;

  @override
  Widget build(BuildContext context) {
    testProvider=context.watch<TestProvider>();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(onTap: (){
                testProvider.isPunch();
                testProvider.notifyListeners();
              },
                  child
                  : Icon(Icons.power)),
              Text(testProvider.textVal),
            ],
          )
        ],
      ),
    );
  }
}
