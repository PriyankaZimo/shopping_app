import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/Availability/widgets/AvailList/set_availability.dart';
import '../../Provider/availability_provider.dart';

class AvailabilityList extends StatelessWidget {

  late AvailabilityProvider provider;

  @override
  Widget build(BuildContext context) {

    provider = context.read<AvailabilityProvider>();
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height - 110,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Consumer<AvailabilityProvider>(
                builder: (context, val, child) => ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) => provider.change
                        ? Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFFfee3d3),
                                        offset: Offset(-1, 1),
                                        blurRadius: 1,
                                      ),
                                      BoxShadow(
                                        color:  Color(0xFFfee3d3),
                                        offset: Offset(2, 2),
                                        blurRadius: 2,
                                      ),
                                    ]),

                                /// ListColor
                                child: Container(
                                  padding: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFF2d3142)

                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Branch'),
                                      IconButton(
                                          onPressed: () {
                                            val.setSelection(false);
                                          },
                                          icon: Icon(
                                            Icons.keyboard_arrow_down,
                                            size: 25,
                                            color:  Colors.black,
                                          ))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        : GestureDetector(
                            onTap: () {

                            },
                            child: Container(
                              height: 300,
                              margin: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color:  Color(0xFF2d3142),

                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  /// Open Container
                                  Container(
                                    decoration: BoxDecoration(
                                      color:  Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0xFFfee3d3),
                                          offset: Offset(-1, 1),
                                          blurRadius: 1,
                                        ),
                                        BoxShadow(
                                          color:  Color(0xFFfee3d3),
                                          offset: Offset(2, 2),
                                          blurRadius: 2,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xFF2262938)

                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Branch1'),
                                          IconButton(
                                              onPressed: () {
                                                val.setSelection(true);
                                              },
                                              icon: const Icon(
                                                Icons.keyboard_arrow_up,
                                                color:
                                                   Colors.black,
                                                size: 25,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Text('njnj'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
              ),
            ),
            Positioned(
                bottom: 45,
                right: 15,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SetAvailability()));
                  },
                  child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
