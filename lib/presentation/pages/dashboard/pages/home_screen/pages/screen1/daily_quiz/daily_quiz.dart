import 'package:flutter/material.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/question_paper1/widget/option_tile.dart';
import 'package:leads/routes/app_route.dart';
import 'package:leads/theme/colors.dart';

class DailyQuiz extends StatefulWidget {
  const DailyQuiz({super.key});

  @override
  State<DailyQuiz> createState() => _DailyQuizState();
}

class _DailyQuizState extends State<DailyQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Quiz"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                height: 42,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff161616),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("1/20"),
                    Row(
                      children: [
                        Text("0:15"),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.av_timer)
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Submit",
                          style: TextStyle(color: white),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffE46B6B)))
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [Spacer(), Icon(Icons.bookmark_outline, size: 40)],
            ),
            SizedBox(height: 40),
            Text(
              "Which psychologist is most associated with the concept of self acualisation?",
              overflow: TextOverflow.clip,
            ),
            SizedBox(
              height: 40,
            ),
            OptionTile(
                option: "Which psychologist is most ",
                isSelected: false,
                index: "A"),
            OptionTile(
                option: "Which psychologist is most ",
                isSelected: true,
                index: "B"),
            OptionTile(
                option: "Which psychologist is most ",
                isSelected: false,
                index: "C"),
            OptionTile(
                option: "Which psychologist is most ",
                isSelected: false,
                index: "D"),
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
                    Navigator.pushNamed(context, AppRotes.DAILYRESULT);
                  },
                  child: const Text("Mark of review",
                      style: TextStyle(color: white)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
