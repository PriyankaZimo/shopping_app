import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileList extends StatefulWidget {
  String img;
  int i;
   ProfileList(this.img,this.i);

  @override
  State<ProfileList> createState() => _ProfileListState(img,i);
}

class _ProfileListState extends State<ProfileList> {
String img;
int i;
_ProfileListState(this.img, this.i);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.white,elevation: 0,),
      body: Hero(
        tag: i,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(img),fit: BoxFit.fill)
          ),

        ),
      ),
    );
  }
}
