import 'package:flutter/material.dart';
import 'package:leads/presentation/pages/home_screen/account_screen/screen1/widget/option_tile.dart';
import 'package:leads/routes/app_route.dart';
import 'package:leads/theme/colors.dart';

class QuestionPaper1 extends StatefulWidget {
  const QuestionPaper1({super.key});

  @override
  State<QuestionPaper1> createState() => _QuestionPaper1State();
}

class _QuestionPaper1State extends State<QuestionPaper1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Question Paper 1"),
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRotes.INSTRUCTION);
              },
              icon: const Icon(Icons.arrow_back)),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text("Finish", style: TextStyle(color: white)))
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'QN23',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey[500]),
                          ),
                        ),
                      ),
                      Icon(Icons.timer, color: Colors.grey[500]),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerRight,
                child:  Icon(
                  Icons.bookmark_outline,
                  size: 30,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                        "Which psychologist is most associated\nwith the concept of self acualisation?")
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const OptionTile(
                  option: "A. Which psychologist is most", isSelected: false),
              const OptionTile(
                  option: "B. Which psychologist is most", isSelected: true),
              const OptionTile(
                  option: "C. Which psychologist is most", isSelected: false),
              const OptionTile(
                  option: "D. Which psychologist is most", isSelected: false),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    icon: const Icon(Icons.info, color: grey),
                    label: const Text("Correction Report",
                        style: TextStyle(color: white)),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRotes.EXAMRESULT);
                    },
                    child:
                        const Text("Mark of review", style: TextStyle(color: white)),
                  )
                ],
              )
            ])));
  }
}
