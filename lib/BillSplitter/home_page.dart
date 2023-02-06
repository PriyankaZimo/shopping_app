import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/BillSplitter/Components/nearby_friends.dart';
import 'package:shopping_app/BillSplitter/Provider/split_provider.dart';
import 'package:shopping_app/BillSplitter/split_now.dart';

class SplitterHome extends StatelessWidget {
  late SplitProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = context.watch<SplitProvider>();
    return Scaffold(
      backgroundColor: Color(0xFF49436c),
      appBar: AppBar(
        backgroundColor: Color(0xFF49436c),
        elevation: 0,
        toolbarHeight: 137,
        flexibleSpace: Container(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'Orix',
                style: TextStyle(color: Color(0xFFebcfce), fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Bill Splitter',
                style: TextStyle(
                    color: Color(0xFFebcfce),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 50, top: 20),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Color(0xFF322c55),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Color(0xFF49436c),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(5, 5),
                                  blurRadius: 5)
                            ],
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Center(
                            child: Text(
                          'Siya',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: 15,
                    top: -10,
                    child: Image.network(
                      'https://icons.iconarchive.com/icons/google/noto-emoji-people-face/1024/10153-man-light-skin-tone-icon.png',
                      scale: 19,
                    )),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color(0xFFedc28e),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(-5, -5),
                            blurRadius: 5),
                        BoxShadow(
                            color: Colors.black12,
                            offset: Offset(5, 5),
                            blurRadius: 10)
                      ],
                      border: Border.all(color: Color(0xFFedc28e))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Bill',
                            style: TextStyle(
                                color: Color(0xFF49436c),
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.select = !provider.select;
                              provider.notifyListeners();
                            },
                            child: const Text('Split With',
                                style: TextStyle(
                                    color: Color(0xFF49436c),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$750.86',
                        style: TextStyle(
                            color: Color(0xFF49436c),
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SplitNow()));
                        },
                        child: Container(
                          height: 55,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xFF49436c),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(-5, -5),
                                    blurRadius: 5),
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(5, 5),
                                    blurRadius: 5)
                              ]),
                          child: const Center(
                              child: Text(
                            'Split Now',
                            style: TextStyle(
                                color: Color(0xFFebcfce),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),

                /// Previous Split
                Container(
                  margin: EdgeInsets.all(30),
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFF342e52),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        height: 53,
                        width: 53,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFF49436c)),
                        child: Icon(
                          Icons.error_outline,
                          color: Color(0xFFebcfce),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              'Your Previous split',
                              style: TextStyle(color: Color(0xFFebcfce)),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            '\$4566',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),

                /// Nearby Container
                NearByFriends(),
              ],
            ),

            /// Profile Image
            provider.select == false
                ? Positioned(
                    right: 55,
                    top: 50,
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Container(
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 20),
                              height: 200,
                              width: 75,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Expanded(
                                child: ListView.builder(
                                  itemCount: provider.addImage.length,
                                  itemBuilder: (context, index) => Container(
                                    height: 30,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFFebcfce)),
                                    child: Image.network(
                                        'https://icons.iconarchive.com/icons/google/noto-emoji-people-face/1024/10153-man-light-skin-tone-icon.png'),
                                  ),
                                ),
                              )),
                          // provider.sel
                          Positioned(
                            top: 150,
                            left: 16,
                            child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFebac9f)),
                                child: IconButton(
                                    onPressed: () {
                                      // provider.selectButton(false);
                                      provider.onAdd();
                                    },
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ))),
                          )
                          //     :
                          // Positioned(
                          //   top: 150,
                          //   left: 16,
                          //   child: Container(
                          //       height: 40,
                          //       width: 40,
                          //       decoration: BoxDecoration(
                          //           shape: BoxShape.circle,
                          //           color: Colors.orange.shade200),
                          //       child: IconButton(
                          //           onPressed: () {
                          //             provider.selectButton(true);
                          //             provider.onDelete();
                          //           },
                          //           icon: Icon(
                          //             Icons.remove,
                          //             color: Colors.white,
                          //           ))),
                          // ),
                        ],
                      ),
                    ))
                : SizedBox(),

            /// previous split Container
            Positioned(
              left: 160,
              top: 260,
              child: Container(
                height: 78,
                width: 78,
                decoration: BoxDecoration(
                    color: Colors.black12, shape: BoxShape.circle),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
