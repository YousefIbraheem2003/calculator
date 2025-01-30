import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.value,
    required this.first,
    required this.operand,
    required this.second,
    required this.color,
  });
  final String value;
  final String first;
  final String second;
  final String operand;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Container(
        color: Colors.white,
        width: 450,
        height: 100,
        child: Center(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  first,
                  style: const TextStyle(fontSize: 30),
                ),
                const SizedBox(width: 10),
                Text(
                  operand,
                  style: TextStyle(
                    fontSize: 30,
                    color: color,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  second,
                  style: const TextStyle(fontSize: 30),
                ),
                const SizedBox(width: 10),
                Text(
                  value,
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
