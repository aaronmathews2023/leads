import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leads/constants/assets.dart';
import 'package:leads/core/theme/text_styles/app_text_styles.dart';

class ExamResult extends StatefulWidget {
  const ExamResult({super.key});

  @override
  State<ExamResult> createState() => _ExamResultState();
}

class _ExamResultState extends State<ExamResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exam Result"),
          actions: [IconButton(icon: Icon(Icons.share), onPressed: () {})],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Question paper1",
                style: AppTextStyles.h1(),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: SvgPicture.asset(
                  Images.result,
                  width: 150,
                  height: 150,
                ),
              ),
            ],
          ),
        ));
  }
}
