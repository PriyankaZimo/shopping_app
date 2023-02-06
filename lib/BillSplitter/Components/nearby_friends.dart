import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/BillSplitter/Provider/split_provider.dart';

class NearByFriends extends StatelessWidget {
  late SplitProvider splitProvider;

  @override
  Widget build(BuildContext context) {
    splitProvider = context.read<SplitProvider>();
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(left: 30,  top: 20),
          margin: EdgeInsets.only(left: 30, right: 30),
          height: 340,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xFF342e52),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Color(0xFF342e52))),
          child: Consumer<SplitProvider>(
            builder: (context, val, child) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Nearby Friends  ',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFFebcfce)),
                      ),
                      Text(
                        '  See all',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75, top: 15),
                  child: Container(
                    height: 150,
                    width: 600,
                    child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: val.item.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Stack(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    print(index);
                                    val.seleC = index;
                                    val.col = index;

                                    val.notifyListeners();
                                  },
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    height: 110,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: val.col == index
                                            ? Colors.black12
                                            : Color(0xFF49436c),

                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10, top: 10),
                                          child: Image.network(
                                            'https://esquimaltmfrc.com/wp-content/uploads/2015/09/flat-faces-icons-circle-man-9.png',
                                            scale: 8,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          val.item[index],
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 110,
                                  left: 30,
                                  child: Center(
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xFFedc28e)),
                                    ),
                                  ),
                                )
                              ],
                            )),
                  ),
                ),
                Text(
                  'Recent Split',
                  style: TextStyle(color: Color(0xFFebcfce), fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                val.selectCat(),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 280,
          left: 40,
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: Color(0xFFedc28e),
                borderRadius: BorderRadius.circular(20)),
            child: Icon(
              Icons.search,
              color: Color(0xFF49436c),
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
