import 'package:flutter/material.dart';

class ListHomePage extends StatefulWidget {
  @override
  State<ListHomePage> createState() => _ListHomePageState();
}

class _ListHomePageState extends State<ListHomePage> {

  List<DynamicWidget> listDynamic = [];

  addList() {
    listDynamic.add(DynamicWidget());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Text('Add List'),),
        body:Container(
          child:Column(
            children: [
              IconButton(onPressed: addList, icon: Icon(Icons.add)),
              Flexible(
                child: ListView.builder(shrinkWrap: true,
                  itemCount: listDynamic.length,
                    itemBuilder: (context,index)=>listDynamic[index]),
              )
            ],
          ) ,

        )
    );
  }
}

class DynamicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(decoration:InputDecoration(hintText: "Enter Data") ,),
    );
  }
}
