import 'package:flutter/material.dart';
import 'package:leads/theme/colors.dart';

class HomeScreenGridTile extends StatelessWidget {
  const HomeScreenGridTile(
      {super.key,
      required this.subtitle,
      required this.imagePath,
      required this.text1,
      required this.text2,
      required this.text2color});
  final String subtitle, imagePath, text1, text2;
  final Color text2color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain, // This will prevent image stretching
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              color: Color(0xffAED5F7),
              child: Text(
                text1,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xff003179)),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.maxFinite,
              color: text2color,
              child: Text(
                text2,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20, color: white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              flex: 1,
              child: Text(
                subtitle,
                style: TextStyle(fontSize: 12, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
