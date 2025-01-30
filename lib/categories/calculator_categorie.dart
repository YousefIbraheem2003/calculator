// import 'package:calculator/categories/buttons_categories.dart';
// import 'package:calculator/categories/gridviewbuilder.dart';
// import 'package:calculator/categories/result_screen.dart';
// import 'package:calculator/functions/functios.dart';
// import 'package:flutter/material.dart';

// List<String> numbers = [
//   '0',
//   '1',
//   '2',
//   '3',
//   '4',
//   '5',
//   '6',
//   '7',
//   '8',
//   '9',
//   '+',
//   '-'
// ];

// class NumbersAndOperaion extends StatefulWidget {
//   const NumbersAndOperaion({
//     super.key,
//   });

//   @override
//   State<NumbersAndOperaion> createState() => _NumbersAndOperaionState();
// }

// class _NumbersAndOperaionState extends State<NumbersAndOperaion> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const Expanded(
//           child: ResultScreen(
//               value: value, first: first, operand: operand, second: second),
//         ),
//         Expanded(
//           child: GridView.count(
//             physics: const NeverScrollableScrollPhysics(),
//             crossAxisCount: 4,
//             children: [
//               NumberAndOperatonsButtons(
//                 numbersAndOperations: '0',
//                 onPressed: () {
//                   if (operandIsEmpty(operand)) {
//                     currentNumber1 = currentNumber1 * 10 + 0;
//                     first = currentNumber1.toString();
//                   } else if (!operandIsEmpty(operand)) {
//                     currentNumber2 = currentNumber2 * 10 + 0;
//                     second = currentNumber2.toString();
//                   }
//                   setState(() {});
//                 },
//               ),
//               NumberAndOperatonsButtons(
//                 numbersAndOperations: '1',
//                 onPressed: () {
//                   if (operandIsEmpty(operand)) {
//                     currentNumber1 = currentNumber1 * 10 + 1;
//                     first = currentNumber1.toString();
//                   } else if (!operandIsEmpty(operand)) {
//                     currentNumber2 = currentNumber2 * 10 + 1;
//                     second = currentNumber2.toString();
//                   }
//                   setState(() {});
//                 },
//               ),
//               NumberAndOperatonsButtons(
//                 numbersAndOperations: '2',
//                 onPressed: () {
//                   if (operandIsEmpty(operand)) {
//                     currentNumber1 = currentNumber1 * 10 + 2;
//                     first = currentNumber1.toString();
//                   } else if (!operandIsEmpty(operand)) {
//                     currentNumber2 = currentNumber2 * 10 + 2;
//                     second = currentNumber2.toString();
//                   }
//                   setState(() {});
//                 },
//               ),
//               NumberAndOperatonsButtons(
//                   numbersAndOperations: '3',
//                   onPressed: () {
//                     if (operand == '') {
//                       currentNumber1 = currentNumber1 * 10 + 3;
//                       first = currentNumber1.toString();
//                     } else if (operand == '+' || operand == '-') {
//                       currentNumber2 = currentNumber2 * 10 + 3;
//                       second = currentNumber2.toString();
//                     }
//                     setState(() {});
//                   }),
//               NumberAndOperatonsButtons(
//                   numbersAndOperations: '4',
//                   onPressed: () {
//                     if (operand == '') {
//                       currentNumber1 = currentNumber1 * 10 + 4;
//                       first = currentNumber1.toString();
//                     } else if (operand == '+' || operand == '-') {
//                       currentNumber2 = currentNumber2 * 10 + 4;
//                       second = currentNumber2.toString();
//                     }
//                     setState(() {});
//                   }),
//               NumberAndOperatonsButtons(
//                   numbersAndOperations: '5',
//                   onPressed: () {
//                     if (operand == '') {
//                       currentNumber1 = currentNumber1 * 10 + 5;
//                       first = currentNumber1.toString();
//                     } else if (operand == '+' || operand == '-') {
//                       currentNumber2 = currentNumber2 * 10 + 5;
//                       second = currentNumber2.toString();
//                     }
//                     setState(() {});
//                   }),
//               NumberAndOperatonsButtons(
//                   numbersAndOperations: '6',
//                   onPressed: () {
//                     if (operand == '') {
//                       currentNumber1 = currentNumber1 * 10 + 6;
//                       first = currentNumber1.toString();
//                     } else if (operand == '+' || operand == '-') {
//                       currentNumber2 = currentNumber2 * 10 + 6;
//                       second = currentNumber2.toString();
//                     }
//                     setState(() {});
//                   }),
//               NumberAndOperatonsButtons(
//                   numbersAndOperations: '7',
//                   onPressed: () {
//                     if (operand == '') {
//                       currentNumber1 = currentNumber1 * 10 + 7;
//                       first = currentNumber1.toString();
//                     } else if (operand == '+' || operand == '-') {
//                       currentNumber2 = currentNumber2 * 10 + 7;
//                       second = currentNumber2.toString();
//                     }
//                     setState(() {});
//                   }),
//               NumberAndOperatonsButtons(
//                   numbersAndOperations: '8',
//                   onPressed: () {
//                     if (operand == '') {
//                       currentNumber1 = currentNumber1 * 10 + 8;
//                       first = currentNumber1.toString();
//                     } else if (operand == '+' || operand == '-') {
//                       currentNumber2 = currentNumber2 * 10 + 8;
//                       second = currentNumber2.toString();
//                     }
//                     setState(() {});
//                   }),
//               NumberAndOperatonsButtons(
//                   numbersAndOperations: '9',
//                   onPressed: () {
//                     if (operand == '') {
//                       currentNumber1 = currentNumber1 * 10 + 9;
//                       first = currentNumber1.toString();
//                     } else if (operand == '+' || operand == '-') {
//                       currentNumber2 = currentNumber2 * 10 + 9;
//                       second = currentNumber2.toString();
//                     }
//                     setState(() {});
//                   }),
//               NumberAndOperatonsButtons(
//                   numbersAndOperations: '+',
//                   onPressed: () {
//                     operand = '+';
//                     setState(() {});
//                   }),
//               NumberAndOperatonsButtons(
//                   numbersAndOperations: '-',
//                   onPressed: () {
//                     operand = '-';
//                     setState(() {});
//                   }),
//               NumberAndOperatonsButtons(
//                   numbersAndOperations: '=',
//                   onPressed: () {
//                     if (operand == "+") {
//                       result1 = int.parse(first) + int.parse(second);
//                       result = '$result1';
//                     }
//                     if (operand == "-") {
//                       result1 = int.parse(first) - int.parse(second);
//                       result = '$result1';
//                     }
//                     first = '';
//                     second = '';
//                     operand = '';
//                     currentNumber1 = 0;
//                     currentNumber2 = 0;
//                     setState(() {});
//                   }),
//               NumberAndOperatonsButtons(
//                   numbersAndOperations: 'C',
//                   onPressed: () {
//                     currentNumber1 = 0;
//                     currentNumber2 = 0;
//                     first = '';
//                     second = '';
//                     operand = '';
//                     result = '';

//                     setState(() {});
//                   }),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
