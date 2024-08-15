import 'package:flutter/material.dart';

class CustomInputFields extends StatelessWidget {
  final String hintText;
  const CustomInputFields({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: hintText
            ));
  }
}