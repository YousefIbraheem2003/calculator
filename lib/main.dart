import 'package:calculator/screen/calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CalculatorWidget(),
    );
  }
}
