import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Provider/setavailability_provider.dart';
import 'add_time.dart';

class SetAvailability extends StatelessWidget {
  var fromTimeController = TextEditingController();
  var toTimeController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  late SetAvailProvider setAvailProvider;

  @override
  Widget build(BuildContext context) {
    setAvailProvider = context.read<SetAvailProvider>();
    // setAvailProvider.timeZoneList();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(),
        title: Row(
          children: const [
            Text(
              'Set Availability',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Consumer<SetAvailProvider>(
          builder: (context, notify, child) => Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                const Center(
                    child: Text(
                  'Available Days',
                  style: TextStyle(fontSize: 18),
                )),
                Text('TimeZone'),
                // TimeZoneDropDown(
                //   availList: availList,
                //   selectedCategory: selectedCategory,
                // ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(-2, -2),
                            blurRadius: 2),
                        BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(2, 2),
                            blurRadius: 2)
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Select Branch',
                        hintStyle: TextStyle(color: Colors.black),
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: setAvailProvider.time.length,
                    itemBuilder: (context, index) => notify.time[index]
                            ['select']
                        ?

                        /// Switch ON
                        Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-1, 1),
                                    blurRadius: 1),
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(2, 2),
                                    blurRadius: 1),
                              ],
                            ),

                            /// Switch on
                            child: Container(
                              padding: EdgeInsets.only(left: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        notify.time[index]['txt'],
                                        style: const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      Switch(
                                          inactiveThumbColor: Colors.grey,
                                          activeTrackColor: Colors.white,
                                          activeColor: Colors.white,
                                          value: notify.time[index]["select"],
                                          onChanged: (val) {
                                            notify.selectButton(index, false);
                                          }),
                                    ],
                                  ),

                                  /// Add Time

                                  AddTime(),

                                  Visibility(
                                    visible: index > 0,
                                    child: Container(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 2),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Text("From:",
                                                          style: TextStyle(
                                                              fontSize: 17)),
                                                      GestureDetector(
                                                          onTap: () {},
                                                          child: Icon(
                                                            Icons
                                                                .calendar_today_outlined,
                                                            color:
                                                                Colors.black54,
                                                          ))
                                                    ],
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.all(10),
                                                    height: 40,
                                                    child: TextFormField(
                                                      onTap: () {},
                                                      readOnly: true,
                                                      controller:
                                                          fromTimeController,
                                                      autovalidateMode:
                                                          AutovalidateMode
                                                              .onUserInteraction,
                                                      decoration: const InputDecoration(
                                                          hintStyle: TextStyle(
                                                              color:
                                                                  Colors.black),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide
                                                                          .none),
                                                          border:
                                                              InputBorder.none),
                                                      enabled: true,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text("To:",
                                                        style: TextStyle(
                                                            fontSize: 17)),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    GestureDetector(
                                                        onTap: () {},
                                                        child: Icon(
                                                          Icons
                                                              .calendar_today_outlined,
                                                          color: Colors.black54,
                                                        )),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        notify.onDelete(index);
                                                      },
                                                      child: Container(
                                                        height: 30,
                                                        width: 30,
                                                        decoration:
                                                            BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Colors
                                                                    .black12),
                                                        child: const Icon(
                                                          Icons.remove,
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
                                                    controller:
                                                        toTimeController,
                                                    onTap: () {},
                                                    readOnly: true,
                                                    autovalidateMode:
                                                        AutovalidateMode
                                                            .onUserInteraction,
                                                    decoration: InputDecoration(
                                                        hintStyle: TextStyle(
                                                            color:
                                                                Colors.black),
                                                        enabledBorder:
                                                            const OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide
                                                                        .none),
                                                        border:
                                                            InputBorder.none),
                                                    enabled: true,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ))
                        :

                        /// Switch OFF
                        Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-1, 1),
                                    blurRadius: 1),
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(2, 2),
                                    blurRadius: 1),
                              ],
                            ),
                            child: Container(
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    notify.time[index]['txt'],
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),

                                  /// Switch
                                  Spacer(),
                                  Switch(
                                      activeColor: Colors.grey,
                                      value: notify.time[index]["select"],
                                      onChanged: (val) {
                                        print(notify);
                                        notify.selectButton(index, true);
                                      }),
                                ],
                              ),
                            ))),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(40),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

// startAvailTime(BuildContext context) async {
//   final TimeOfDay? picked = await showTimePicker(
//     context: context,
//     initialTime:
//         TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute),
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
//         TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute),
//   );
//   if (picked != null) {
//     DateTime dateTime = DateTime(DateTime.now().year, DateTime.now().month,
//         DateTime.now().day, picked.hour, picked.minute);
//     toTimeController.text = DateFormat("HH:mm").format(dateTime);
//     print(toTimeController.text);
//   }
// }
}
