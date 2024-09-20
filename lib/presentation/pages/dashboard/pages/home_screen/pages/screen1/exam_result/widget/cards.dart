import 'package:flutter/material.dart';
import 'package:leads/theme/colors.dart';

class ExamCards extends StatelessWidget {
  const ExamCards({
    super.key,
    required this.number,
    required this.label,
    required this.backgroundColor,
    required this.icon,
  });
  final int number;
  final String label;
  final Color backgroundColor;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 175,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: backgroundColor.withOpacity(.1),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                icon,
                color: white,
                size: 30,
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    '$number',
                    style: TextStyle(
                        fontSize: 20,
                        color: white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 9,
                      color: white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
