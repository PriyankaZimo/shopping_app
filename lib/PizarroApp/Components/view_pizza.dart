import 'package:flutter/material.dart';

class ViewPizza extends StatefulWidget {
  String imag;

  ViewPizza({required this.imag});

  @override
  State<ViewPizza> createState() => _ViewPizzaState(imag);
}

class _ViewPizzaState extends State<ViewPizza> {
  String imag;

  _ViewPizzaState(this.imag);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [Hero(tag: imag, child: Center(child: Image.network(imag)))],
      ),
    );
  }
}
