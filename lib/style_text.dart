import 'package:flutter/material.dart';

class Styletext extends StatelessWidget {
  const Styletext(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(fontSize: 25, color: Colors.white),
      ),
    );
  }
}
