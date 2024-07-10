import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [Colors.white, Color.fromARGB(255, 73, 25, 157)],
        ),
      ),
    ),
  );
}
