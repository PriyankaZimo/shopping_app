import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'Provider/availability_provider.dart';

class AvailabilityPage extends StatelessWidget {
  late AvailabilityProvider availabilityProvider;

  @override
  Widget build(BuildContext context) {
    availabilityProvider = context.watch<AvailabilityProvider>();
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      availabilityProvider.selectButton(0);
                    },
                    child: Column(
                      children: [
                         Text(
                          'Available',
                          style: TextStyle(fontSize: 16,color: availabilityProvider.select==0?Colors.orange:Colors.black),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 3,
                          width: 100,
                          decoration: BoxDecoration(
                            color: availabilityProvider.select == 0
                                ? Colors.orange
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                  color: availabilityProvider.select == 0
                                      ? Colors.black12
                                      : Colors.transparent,
                                  offset: Offset(5, 3),
                                  blurRadius: 3)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          availabilityProvider.selectButton(1);
                        },
                        child: Column(
                          children: [
                            Text('UnAvailable',
                                style: TextStyle(fontSize: 16,color:availabilityProvider.select==1?Colors.orange:Colors.black )),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 3,
                              width: 110,
                              decoration: BoxDecoration(
                                color: availabilityProvider.select == 1
                                    ? Colors.orange
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      color: availabilityProvider.select == 1
                                          ? Colors.black12
                                          : Colors.transparent,
                                      offset: Offset(5, 3),
                                      blurRadius: 3)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),

              /// Categories
              availabilityProvider.selectCat()
            ],
          ),
        ),

      ],
    );
  }
}
