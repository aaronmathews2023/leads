import 'package:flutter/material.dart';
import 'package:leads/theme/colors.dart';

class ExamContainer extends StatelessWidget {
  const ExamContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width * 95,
        height: size.height * .12,
        decoration: BoxDecoration(
          color: Color(0xff006742).withOpacity(.4),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Padding(
          padding: EdgeInsets.all(17),
          child: Row(
            children: [
              Column(children: [
                Text(
                  "Your Mark",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3),
                Text(
                  "15",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ]),
              SizedBox(
                width: 20,
              ),
              VerticalDivider(
                thickness: 1,
                color: white,
              ),
              SizedBox(
                width: 40,
              ),
              Text("Passed",
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold, color: white))
            ],
          ),
        ));
  }
}
