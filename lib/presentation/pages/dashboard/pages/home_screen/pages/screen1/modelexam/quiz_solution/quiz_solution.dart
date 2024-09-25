import 'package:flutter/material.dart';
import 'package:leads/presentation/pages/authentication/login_screen/widgets/custombutton.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/Solultions/widget/solution_container.dart';
import 'package:leads/routes/app_route.dart';
import 'package:leads/theme/colors.dart';

class QuizSolution extends StatefulWidget {
  const QuizSolution({super.key});

  @override
  State<QuizSolution> createState() => _QuizSolutionState();
}

class _QuizSolutionState extends State<QuizSolution> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Solution"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Question paper 1"),
              SizedBox(height: 20),
              SolutionContainer(
                number: 1,
                question:
                    "Which psychologist is most associated with the concept of self-actualization",
                solution:
                    "Stop the vechile an wait till the pedestrians cross the road and then proceed",
                icon: Icons.bookmark_outline,
                status: false,
              ),
              SizedBox(height: 20),
              SolutionContainer(
                number: 2,
                question:
                    "Which psychologist is most associated with the concept of self-actualization",
                solution:
                    "Stop the vechile an wait till the pedestrians cross the road and then proceed",
                icon: Icons.bookmark_outline,
                status: true,
              ),
              SizedBox(height: 20),
              SolutionContainer(
                number: 3,
                question:
                    "Which psychologist is most associated with the concept of self-actualization",
                solution:
                    "Stop the vechile an wait till the pedestrians cross the road and then proceed",
                icon: Icons.bookmark_outline,
                status: null,
              ),
              SizedBox(
                height: 20,
              ),
              Spacer(),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRotes.BOTTOMFIRSTPPAGE);
                },
                label: "Back",
                bgcolor: white,
                color: black,
              )
            ],
          ),
        ));
  }
}
