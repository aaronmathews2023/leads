import 'package:flutter/material.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/questionbank/widget/container_bank.dart';
import 'package:leads/theme/colors.dart';

class Questionbank extends StatefulWidget {
  const Questionbank({super.key});

  @override
  State<Questionbank> createState() => _QuestionbankState();
}

class _QuestionbankState extends State<Questionbank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Question Bank"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Select Qn Type"),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ContainerBank(
                question:
                    "Which psychologist is most associated with the concept of self-actualization?",
                solution:
                    "Stop the vechicle an wait till the pedestrians cross the road and the proceed",
                number: 1),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffD9D9D9).withOpacity(.1)),
              height: 150,
              width: double.maxFinite,
              child: Center(child: Text("advertisement")),
            ),
            SizedBox(height: 20),
            ContainerBank(
                question:
                    "Which psychologist is most associated with the concept of self-actualization?",
                solution:
                    "Stop the vechicle an wait till the pedestrians cross the road and the proceed",
                number: 2),
            SizedBox(height: 20),
            ContainerBank(
                question:
                    "Which psychologist is most associated with the concept of self-actualization?",
                solution:
                    "Stop the vechicle an wait till the pedestrians cross the road and the proceed",
                number: 3)
          ],
        ),
      ),
    );
  }
}
