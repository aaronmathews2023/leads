import 'package:flutter/material.dart';
import 'package:leads/core/routes/app_route.dart';
import 'package:leads/presentation/pages/authentication/login_screen/widgets/custombutton.dart';

import 'package:leads/theme/colors.dart';

import 'widget/solution_container.dart';

class Solution extends StatefulWidget {
  const Solution({super.key});

  @override
  State<Solution> createState() => _SolutionState();
}

class _SolutionState extends State<Solution> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Solution"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Question paper 1"),
              const SizedBox(height: 20),
              const SolutionContainer(
                number: 1,
                question:
                    "Which psychologist is most associated with the concept of self-actualization",
                solution:
                    "Stop the vechile an wait till the pedestrians cross the road and then proceed",
                icon: Icons.bookmark_outline,
                status: false,
              ),
              const SizedBox(height: 20),
              const SolutionContainer(
                number: 2,
                question:
                    "Which psychologist is most associated with the concept of self-actualization",
                solution:
                    "Stop the vechile an wait till the pedestrians cross the road and then proceed",
                icon: Icons.bookmark_outline,
                status: true,
              ),
              const SizedBox(height: 20),
              const SolutionContainer(
                number: 3,
                question:
                    "Which psychologist is most associated with the concept of self-actualization",
                solution:
                    "Stop the vechile an wait till the pedestrians cross the road and then proceed",
                icon: Icons.bookmark_outline,
                status: null,
              ),
              const SizedBox(
                height: 20,
              ),
              const Spacer(),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.BOTTOMFIRSTPPAGE);
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
