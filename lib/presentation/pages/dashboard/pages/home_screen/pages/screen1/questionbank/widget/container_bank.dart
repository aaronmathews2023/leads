import 'package:flutter/material.dart';
import 'package:leads/theme/colors.dart';

class ContainerBank extends StatelessWidget {
  const ContainerBank(
      {super.key,
      required this.question,
      required this.solution,
      required this.number});
  final String question;
  final String solution;

  final int number;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$number. '),
                Expanded(
                  child: Text(
                    question,
                    style: TextStyle(
                      fontSize: 12,
                      color: white,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Icon(Icons.bookmark_outline, size: 30)
              ],
            ),
          ),
          SizedBox(height: 20),
          Stack(
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffD9D9D9).withOpacity(.1)),
                child: Text(
                  solution,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                ),
              ),
              Positioned(
                top: 0,
                left: 20,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff060606)),
                    height: 20,
                    width: 90,
                    child: Center(
                      child: Text(
                        "Answer",
                        style: TextStyle(color: white, fontSize: 12),
                      ),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
