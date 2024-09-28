import 'package:flutter/material.dart';
import 'package:leads/constants/dimensions.dart';

class CiricleAvatarHome extends StatelessWidget {
  CiricleAvatarHome({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0xff283138),
          child: Icon(
            icon,
            color: const Color(0xff050B10),
            size: 30,
          ),
        ),
        kHeight,
        Text(
          text,
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 11),
        )
      ],
    );
  }
}
