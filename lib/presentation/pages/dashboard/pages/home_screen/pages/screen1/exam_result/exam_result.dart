import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leads/constants/assets.dart';
import 'package:leads/core/theme/text_styles/app_text_styles.dart';
import 'package:leads/presentation/pages/authentication/login_screen/widgets/custombutton.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/exam_result/widget/cards.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/exam_result/widget/container.dart';

import 'package:leads/routes/app_route.dart';
import 'package:leads/theme/colors.dart';

class ExamResult extends StatefulWidget {
  const ExamResult({super.key});

  @override
  State<ExamResult> createState() => _ExamResultState();
}

class _ExamResultState extends State<ExamResult> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ExamCards(
                      number: 10,
                      label: "Correct Answer",
                      backgroundColor: Colors.green.shade900,
                      icon: Icons.done),
                  ExamCards(
                      number: 8,
                      label: "Incorrect Answer",
                      backgroundColor: Colors.red.shade900,
                      icon: Icons.cancel)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ExamCards(
                      number: 10,
                      label: "Attempted",
                      backgroundColor: Colors.blue.shade900,
                      icon: Icons.back_hand),
                  ExamCards(
                      number: 8,
                      label: "Un Attempted",
                      backgroundColor: Colors.grey.shade900,
                      icon: Icons.handshake)
                ],
              ),
              SizedBox(height: 20),
              ExamContainer(size: size),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size.fromWidth(double.maxFinite)),
                onPressed: () {
                  Navigator.pushNamed(context, AppRotes.SOLUTION);
                },
                child: const Text("View Solultions",
                    style: TextStyle(color: white)),
              ),
              SizedBox(height: 20),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRotes.HOMESCREEN);
                },
                label: "Go to Home",
                bgcolor: white,
                color: black,
              )
            ],
          ),
        ));
  }
}