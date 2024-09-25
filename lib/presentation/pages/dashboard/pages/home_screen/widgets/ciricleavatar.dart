import 'package:flutter/material.dart';

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
          child: Icon(
            icon,
            color: Color(0xff050B10),
            size: 30,
          ),
          backgroundColor: Color(0xff283138),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}
