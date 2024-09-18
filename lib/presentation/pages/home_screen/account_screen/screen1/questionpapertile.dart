import 'package:flutter/material.dart';
import 'package:leads/presentation/pages/authentication/login_screen/widgets/custombutton.dart';
import 'package:leads/theme/colors.dart';

class QuestionPaperTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(Icons.description, size: 40, color: Colors.blue),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Question paper 1',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '20 Qn. 1 hrs',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            onPressed: () {
              
            },
            label: "Start",
            color: white,
          )
        ],
      ),
    );
  }
}
