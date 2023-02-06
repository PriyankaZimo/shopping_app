import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/Availability/Provider/availability_provider.dart';
import 'package:shopping_app/Availability/Provider/setavailability_provider.dart';
import 'package:shopping_app/Availability/widgets/AvailList/availability_list.dart';
import 'package:shopping_app/BillSplitter/Components/split_slider.dart';
import 'package:shopping_app/BillSplitter/Provider/slider_provider.dart';
import 'package:shopping_app/BillSplitter/Provider/split_provider.dart';
import 'package:shopping_app/BillSplitter/split_now.dart';
import 'package:shopping_app/BurgerApp/Provider/burger_provider.dart';
import 'package:shopping_app/BurgerApp/Provider/dropdown_provider.dart';
import 'package:shopping_app/Multiform/Provider/form_provider.dart';
import 'package:shopping_app/Multiform/multi_forms.dart';
import 'package:shopping_app/PizarroApp/Provider/createown_provider.dart';
import 'package:shopping_app/PizarroApp/Provider/pizza_provider.dart';
import 'package:shopping_app/ShoppigScreens/Home/home_page.dart';
import 'package:shopping_app/testpage.dart';
import 'package:shopping_app/testprovider.dart';

import 'AddList/homepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (BuildContext context) => SplitProvider()),
        ChangeNotifierProvider(
          create: (BuildContext context) => SliderProvider(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => BurgerProvider(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => DropDownProvider(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => PizzaProvider(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => CreateOwnProvider(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => FormProvider(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => AvailabilityProvider(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => SetAvailProvider(),
        ),
     ChangeNotifierProvider(create: (context)=>TestProvider())
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: TestPage()),
    );
  }
}
