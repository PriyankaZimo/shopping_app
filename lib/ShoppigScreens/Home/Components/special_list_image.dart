import 'package:flutter/material.dart';

class SpecialList extends StatefulWidget {
  String imag;
  int index;

  SpecialList(this.imag, this.index);

  @override
  State<SpecialList> createState() => _SpecialListState(imag, index);
}

class _SpecialListState extends State<SpecialList> {
  String imag;
  int index;

  _SpecialListState(this.imag, this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body:  Hero(
        tag: index,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(imag),fit: BoxFit.fill)
          ),

        ),
      ),
    );
  }
}
