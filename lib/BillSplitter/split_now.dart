import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import 'Components/split_slider.dart';

class SplitNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF49436c),
      appBar: AppBar(
        backgroundColor: Color(0xFF49436c),
        elevation: 0,
        toolbarHeight: 90,
        leadingWidth: 90,
        leading: Container(
          padding: const EdgeInsets.only(left: 10),
          margin: const EdgeInsets.only(left: 20, top: 25),
          decoration: BoxDecoration(
              color: Color(0xFF373256),
              borderRadius: BorderRadius.circular(20)),
          child: const BackButton(
            color: Color(0xFFeec28d),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 120, top: 20),
          child: Text(
            'Split Now',
            style: TextStyle(color: Color(0xFFeec28d), fontSize: 25),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: PopupMenuButton(color: Colors.white, icon: const Icon(Icons.more_vert, color: Color(0xFFeec28d), size: 30,),
                itemBuilder: (context) => [
                      const PopupMenuItem(child: Text('Me', style: TextStyle(color: Color(0xFF49436c), fontWeight: FontWeight.bold),)),
                      const PopupMenuItem(child: Text('Cody', style: TextStyle(color: Color(0xFF49436c), fontWeight: FontWeight.bold))),
                      const PopupMenuItem(child: Text('Khalifa', style: TextStyle(color: Color(0xFF49436c), fontWeight: FontWeight.bold))),
                      const PopupMenuItem(child: Text('Profile',style: TextStyle(color: Color(0xFF49436c), fontWeight: FontWeight.bold))),
                    ]),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xFFeec28d),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 5),
                      blurRadius: 5)
                ],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF49436c),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                          child: Text(
                        'Receipt',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 15,
                        decoration: const BoxDecoration(
                          color: Color(0xFF49436c),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                              bottomRight: Radius.circular(40)),
                        ),
                      ),
                      const Expanded(
                        child: DottedLine(
                          dashColor: Color(0xFF49436c),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 15,
                        decoration: const BoxDecoration(
                          color: Color(0xFF49436c),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 100),
                        child: Text(
                          'now',
                          style:
                              TextStyle(color: Color(0xFF49436c), fontSize: 16),
                        ),
                      ),
                      Text('year now',
                          style: TextStyle(
                              color: Color(0xFF49436c), fontSize: 16)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('Team Dinner',
                          style: TextStyle(
                              color: Color(0xFF49436c),
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('\$750.80',
                            style: TextStyle(
                                color: Color(0xFF49436c),
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 100,
                        width: double.infinity,
                        padding: EdgeInsets.only(top: 15),
                        margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xFF49436c)),
                            color: Color(0xFF49436c)),
                        child: Column(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/219/219961.png',
                                      scale: 12,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.network(
                                      'https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-5-512.png',
                                      scale: 12,
                                    ),
                                  ],
                                ),
                                Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.black, width: 2)),
                                    child: Image.network(
                                      'https://esquimaltmfrc.com/wp-content/uploads/2015/09/flat-faces-icons-circle-woman-7.png',
                                      scale: 24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Spliter with',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 100,
                        left: 50,
                        right: 50,
                        child: Center(
                          child: Container(
                            height: 78,
                            width: 78,
                            decoration: const BoxDecoration(
                                color: Colors.black12, shape: BoxShape.circle),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  height: 38,
                                  width: 38,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            SplitSlider()
          ],
        ),
      ),
    );
  }
}
