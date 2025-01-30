// import 'package:calculator/categories/buttons_categories.dart';
// import 'package:calculator/categories/result_screen.dart';
// import 'package:calculator/functions/functios.dart';
// import 'package:flutter/material.dart';

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   int num2 = 0;
//   String first = '';
//   String second = '';
//   String operand = '';
//   String result = '';
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ResultScreen(
//             value: result, first: first, operand: operand, second: second),
//         Expanded(
//           child: GridView.builder(
//             itemCount: 10,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 4),
//             itemBuilder: (context, index) {
//               return NumberAndOperatonsButtons(
//                 numbersAndOperations: index.toString(),
//                 onPressed: () {
//                   if (operandIsEmpty(operand)) {
//                     int num = index;
//                     first = num.toString();
//                   }

//                   if (!operandIsEmpty(operand)) {
//                     second = index.toString();
//                   }
//                   setState(() {});
//                 },
//               );
//             },
//           ),
//         ),
//         Row(
//           children: [
//             NumberAndOperatonsButtons(
//               numbersAndOperations: '+',
//               onPressed: () {
//                 operand = '+';
//                 setState(() {});
//               },
//             ),
//             NumberAndOperatonsButtons(
//               numbersAndOperations: '-',
//               onPressed: () {
//                 operand = '-';
//                 setState(() {});
//               },
//             ),
//             NumberAndOperatonsButtons(
//               numbersAndOperations: '=',
//               onPressed: () {
//                 switch (operand) {
//                   case '+':
//                     num2 = int.parse(first) + int.parse(second);
//                     result = num2.toString();
//                     break;
//                   case '-':
//                     num2 = int.parse(first) - int.parse(second);
//                     result = num2.toString();
//                     break;
//                 }
//                 first = '';
//                 second = '';
//                 operand = '';

//                 setState(() {});
//               },
//             ),
//             NumberAndOperatonsButtons(
//               numbersAndOperations: 'c',
//               onPressed: () {
//                 result = '';
//                 setState(() {});
//               },
//             ),
//           ],
//         )
//       ],
//     );
//   }
// }

// // enum Operations {
// //   plus,
// //   minus,
// // }
