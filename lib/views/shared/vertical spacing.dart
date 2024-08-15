import 'package:flutter/material.dart';

class VerticalSpacing extends StatelessWidget {
  final double size;
  const VerticalSpacing({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(height: size,);
  }
}