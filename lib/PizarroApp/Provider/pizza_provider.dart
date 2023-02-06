import 'package:flutter/material.dart';
import 'package:shopping_app/PizarroApp/Components/burger_page.dart';
import 'package:shopping_app/PizarroApp/Components/cheese_page.dart';
import 'package:shopping_app/PizarroApp/Components/pizza_page.dart';
import 'package:shopping_app/PizarroApp/Components/salad_page.dart';

class PizzaProvider extends ChangeNotifier{

  var selectcol,seletmenuList,selIcon,selImg=0;
  List item=['Pizza','Burger','Salad','Cheese',];
  var select=0;


  pizzaList(){
    switch(select){
      case 0:
        return PizzaPage();
      case 1:
        return BurgerPage();
      case 2:
        return SaladPage();
      case 3:
        return CheesePage();

    }
  }
}
