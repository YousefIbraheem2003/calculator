import 'package:calculator/categories/grid_view.dart';
import 'package:flutter/material.dart';

class CalculatorWidget extends StatelessWidget {
  const CalculatorWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 80),
        child: MyWidget(),
      ),
    );
  }
}
