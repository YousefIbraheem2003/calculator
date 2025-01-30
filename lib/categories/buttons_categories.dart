import 'package:flutter/material.dart';

class NumberAndOperatonsButtons extends StatelessWidget {
  const NumberAndOperatonsButtons(
      {super.key, required this.numbersAndOperations, required this.onPressed});
  final String numbersAndOperations;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: RawMaterialButton(
        onPressed: onPressed,
        elevation: 2.0,
        fillColor: Colors.grey,
        constraints: const BoxConstraints(minWidth: 90, minHeight: 90),
        padding: const EdgeInsets.all(15.0),
        shape: const CircleBorder(),
        child: Text(
          numbersAndOperations,
          style: const TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
