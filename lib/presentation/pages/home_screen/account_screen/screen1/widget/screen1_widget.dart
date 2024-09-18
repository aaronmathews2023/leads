import 'package:flutter/material.dart';
import 'package:leads/theme/colors.dart';

class DashboardGridTile extends StatelessWidget {
  const DashboardGridTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imagePath
    });
  final String title, subtitle, imagePath;

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
            Expanded(
              flex: 1,
              child: Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue),
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
