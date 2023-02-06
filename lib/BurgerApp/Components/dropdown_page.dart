// import 'package:flutter/material.dart';
//
// class DropDownPage extends StatefulWidget {
//   Function onSelected;
//
//   @override
//   State<DropDownPage> createState() => _DropDownPageState();
//
//   DropDownPage({required this.onSelected});
// }
//
// class _DropDownPageState extends State<DropDownPage> {
//   List<DropdownMenuItem<String>> get dropdownItems {
//     List<DropdownMenuItem<String>> menuItems = [
//       DropdownMenuItem(child: Text("Select Country"), value: "Select Country"),
//       DropdownMenuItem(child: Text("india"), value: "india"),
//       DropdownMenuItem(child: Text("China"), value: "China"),
//     ];
//     return menuItems;
//   }
//
//   var selectedValue = "Select Country";
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 10),
//       child: DropdownButton(
//           isExpanded: true,
//           value: selectedValue,
//           items: dropdownItems,
//           underline: SizedBox(),
//           onChanged: (String? val) {
//             setState(() {
//               selectedValue = val!;
//               widget.onSelected(val);
//             });
//           }),
//     );
//   }
// }
