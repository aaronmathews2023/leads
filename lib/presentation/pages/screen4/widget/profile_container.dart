import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer(
      {super.key,
      required this.icons,
      required this.text,
      required this.bgcolor});
  final String text;
  final IconData icons;
  final Color bgcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 51,
        decoration: BoxDecoration(
            color: Color(
          0xffb0A0F13,
        )),
        child: Row(
          children: [
            Icon(
              icons,
              color: bgcolor,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
