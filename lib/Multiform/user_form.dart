
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/form_provider.dart';

class UserForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        margin: const EdgeInsets.only(top: 70, left: 10, right: 10),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black12, offset: Offset(-5, -5), blurRadius: 5),
          BoxShadow(color: Colors.black12, offset: Offset(0, 3), blurRadius: 5)
        ]),
        child: Column(
          children: [
            Consumer<FormProvider>(
              builder: (BuildContext context, value, Widget? child) =>
                  Container(
                padding: EdgeInsets.only(left: 10),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.teal.shade800, Colors.tealAccent.shade100],
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'User Forms',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'First Name'),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: 'Last Name'),
                ))
          ],
        ));
  }
}
