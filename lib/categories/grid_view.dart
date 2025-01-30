import 'package:calculator/categories/buttons_categories.dart';
import 'package:calculator/categories/result_screen.dart';
import 'package:calculator/functions/functios.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int num2 = 0;
  String first = '';
  String second = '';
  String operand = '';
  String result = '';
  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResultScreen(
          value: result,
          first: first,
          operand: operand,
          second: second,
          color: color,
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 4,
            children: [
              ...List.generate(
                10,
                (index) => NumberAndOperatonsButtons(
                  numbersAndOperations: '${9 - index}',
                  onPressed: () {
                    if (operandIsEmpty(operand)) {
                      first += '${9 - index}';
                    } else if (!operandIsEmpty(operand)) {
                      second += '${9 - index}';
                    }
                    setState(() {});
                  },
                ),
              ),
              NumberAndOperatonsButtons(
                numbersAndOperations: '+',
                onPressed: () {
                  operand = '+';
                  setState(() {});
                },
              ),
              NumberAndOperatonsButtons(
                numbersAndOperations: '-',
                onPressed: () {
                  operand = '-';
                  setState(() {});
                },
              ),
              NumberAndOperatonsButtons(
                numbersAndOperations: '=',
                onPressed: () {
                  if (operandIsEmpty(operand)) {
                    result = first;
                  } else if (second == '') {
                    color = Colors.red;
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Invalid operation'),
                        duration: Duration(seconds: 5),
                      ),
                    );
                  } else if (second != '') {
                    color = Colors.black;
                  }
                  setState(() {});
                  switch (operand) {
                    case '+':
                      num2 = int.parse(first) + int.parse(second);
                      result = num2.toString();
                      break;
                    case '-':
                      num2 = int.parse(first) - int.parse(second);
                      result = num2.toString();
                      break;
                  }
                  first = '';
                  second = '';
                  operand = '';
                  setState(() {});
                },
              ),
              NumberAndOperatonsButtons(
                numbersAndOperations: 'c',
                onPressed: () {
                  first = '';
                  second = '';
                  operand = '';
                  result = '';
                  color = Colors.black;
                  setState(() {});
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
