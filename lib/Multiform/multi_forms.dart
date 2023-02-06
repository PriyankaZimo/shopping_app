
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/Multiform/user_form.dart';
import 'Provider/form_provider.dart';

class MultiForm extends StatelessWidget {
  late FormProvider formProvider;
  @override
  Widget build(BuildContext context) {
    formProvider = context.watch<FormProvider>();
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.teal.shade800,
            Colors.tealAccent.shade100,
          ])),
        ),
        backgroundColor: Colors.orange.shade700,
        elevation: 0,
        title: const Text(
          'User Form',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body:
      formProvider.logData.isEmpty
          ? Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://c.tenor.com/adNy2LB2V9cAAAAC/to-do-list-check-list.gif',
                    ),
                    fit: BoxFit.cover),
              ),
            )
          : SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: formProvider.logData.length,
                  itemBuilder: (context, index) =>
                      Stack(
                        children: [
                          UserForm(),
                          Positioned(
                            top: 65,
                            right: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                 IconButton(
                                      icon: const Icon(
                                        Icons.delete,
                                        color: Colors.white,size: 30,
                                      ),
                                      onPressed: () {
                                        formProvider.onDelete(index);
                                      },
                                    ),
                              ],
                            ),
                          )
                        ],
                      )),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.tealAccent.shade700,
        child: const Icon(Icons.add),
        onPressed: formProvider.onAdd,
      ),
    );
  }
}
