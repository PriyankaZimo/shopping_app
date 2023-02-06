import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Provider/setavailability_provider.dart';

class AddTime extends StatelessWidget {

  late SetAvailProvider setAvailProvider;
  var fromTimeController = TextEditingController();
  var toTimeController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    setAvailProvider = context.read<SetAvailProvider>();

    return
        Consumer<SetAvailProvider>(
          builder: (context, val, child) => Form(
            key: formKey,
            child: Container(
              padding: const EdgeInsets.only(right: 10),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("From:", style: TextStyle(fontSize: 17)),
                              GestureDetector(
                                  onTap: () {

                                  },
                                  child: Icon(Icons.calendar_today_outlined,
                                      color:  Colors.black54,
                                  ))
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 40,
                            child: TextFormField(
                              onTap: () {},
                              readOnly: true,
                              controller: fromTimeController,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      color:Colors.black),
                                  enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),border: InputBorder.none),
                              enabled: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 20,),
                            Text(
                              "To:",
                              style: TextStyle(fontSize: 17),
                            ),SizedBox(width: 20,),
                            GestureDetector(onTap: (){

                            },
                                child: Icon(Icons.calendar_today_outlined,color:  Colors.black54,)),SizedBox(width: 20,),
                            GestureDetector(
                              onTap: () {
                                val.onAdd();
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 40,
                          child: TextFormField(
                            controller: toTimeController,
                            onTap: () {

                            },
                            readOnly: true,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    color: Colors.black),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                border: InputBorder.none),
                            enabled: true,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        );
    }

    // startAvailTime(BuildContext context) async {
    //   final TimeOfDay? picked = await showTimePicker(
    //     context: context,
    //     initialTime:
    //     TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute),
    //   );
    //   if (picked != null) {
    //     DateTime dateTime = DateTime(DateTime.now().year, DateTime.now().month,
    //         DateTime.now().day, picked.hour, picked.minute);
    //     fromTimeController.text = DateFormat("HH:mm").format(dateTime);
    //     print(fromTimeController.text);
    //   }
    // }
    //
    // endAvailTime(BuildContext context) async {
    //   final TimeOfDay? picked = await showTimePicker(
    //     context: context,
    //     initialTime:
    //     TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute),
    //   );
    //   if (picked != null) {
    //     DateTime dateTime = DateTime(DateTime.now().year, DateTime.now().month,
    //         DateTime.now().day, picked.hour, picked.minute);
    //     toTimeController.text = DateFormat("HH:mm").format(dateTime);
    //     print(toTimeController.text);
    //   }
    // }
    //

    /// Date
    // setAvailDate(BuildContext context) async {
    //   final DateTime? picked = await showDatePicker(
    //       context: context,
    //       initialDate: DateTime.now(),
    //       initialDatePickerMode: DatePickerMode.day,
    //       firstDate: DateTime(2015),
    //       lastDate: DateTime(2101));
    //
    //   if (picked != null) {
    //     DateTime day = DateTime(picked.year, picked.month, picked.day);
    //
    //     fromDateController.text = DateFormat("yyyy-MM-dd").format(day);
    //     print(fromDateController.text);
    //   }
    // }
    //
    // endAvailDate(BuildContext context) async {
    //   final DateTime? picked = await showDatePicker(
    //       context: context,
    //       initialDate: DateTime.now(),
    //       initialDatePickerMode: DatePickerMode.day,
    //       firstDate: DateTime(2015),
    //       lastDate: DateTime(2101));
    //
    //   if (picked != null) {
    //     DateTime day = DateTime(picked.year, picked.month, picked.day);
    //
    //     toDateController.text = DateFormat("yyyy-MM-dd").format(day);
    //     print(toDateController.text);
    //   }
    // }
  }
