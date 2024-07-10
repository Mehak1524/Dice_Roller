import 'package:flutter/material.dart';

class TextStyles_text extends StatelessWidget {
  const TextStyles_text(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          color: Color.fromARGB(255, 223, 240, 36), fontSize: 28),
    );
  }
}
