import 'package:flutter/material.dart';

import 'package:leads/theme/colors.dart';

class SolutionContainer extends StatelessWidget {
  const SolutionContainer({
    super.key,
    required this.question,
    required this.solution,
    required this.icon,
    required this.status,
    required this.number,
  });
  final String question;
  final String solution;
  final IconData icon;
  final bool? status;
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
                Icon(icon, size: 30)
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
                    borderRadius: BorderRadius.circular(12),
                    color: status == true
                        ? Color(
                            0xff04351B,
                          )
                        : status == false
                            ? Color(0xff5D1E1D)
                            : Color(0xff1B1B1B)),
                child: Text(
                  solution,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                ),
              ),
              Positioned(
                top: 0,
                left: 20,
                child: Row(
                  children: [
                    Container(
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
                    SizedBox(width: 10),
                    Container(
                        height: 20,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: status == true
                                ? Color(
                                    0xff017335,
                                  )
                                : status == false
                                    ? Color(0xffEF4442)
                                    : Color(0xff0060606)),
                        child: Center(
                          child: Text(
                            status == true
                                ? "Correct"
                                : status == false
                                    ? "Incorrect"
                                    : "unattended",
                            style: TextStyle(color: white, fontSize: 12),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
          
        ],
      ),
       
    );
  }
}
