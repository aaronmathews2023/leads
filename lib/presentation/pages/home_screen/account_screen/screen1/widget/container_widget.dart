import 'package:flutter/material.dart';

class ColoredContainer extends StatelessWidget {
  final Color color;

  ColoredContainer({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: color, 
     
    );
  }
}
