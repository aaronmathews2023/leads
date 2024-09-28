import 'package:flutter/material.dart';
import 'package:leads/presentation/pages/authentication/login_screen/widgets/custombutton.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/learners_practice_test_screen/learners_practice_screen/widget/container_partice.dart';

class LearnersPartice extends StatefulWidget {
  const LearnersPartice({super.key});

  @override
  State<LearnersPartice> createState() => _LearnersParticeState();
}

class _LearnersParticeState extends State<LearnersPartice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Practice"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 42,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff161616),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Select Qn Type"),
                  Icon(Icons.keyboard_arrow_down),
                  Text("1/222"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Spacer(),
                Icon(
                  Icons.bookmark_outline,
                  size: 30,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Which psychologist is most associated with the concept of self-actualization?",
              overflow: TextOverflow.clip,
            ),
            const SizedBox(
              height: 40,
            ),
            const ContainerPartice(
                option: "Which is pyschologist is most", isSelected: true),
            const SizedBox(
              height: 20,
            ),
            const ContainerPartice(
                option: "Which is pyschologist is most", isSelected: null),
            const SizedBox(
              height: 20,
            ),
            const ContainerPartice(
                option: "Which is pyschologist is most", isSelected: null),
            const SizedBox(
              height: 20,
            ),
            const ContainerPartice(
                option: "Which is pyschologist is most", isSelected: false),
            CustomButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (ctx) => Container(
                            width: double.maxFinite,
                            color: const Color(0xff050B10),
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Incorrect",
                                  style: TextStyle(color: Colors.red),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text("Answer:"),
                                Text("Which psychologist is most"),
                                SizedBox(
                                  height: 50,
                                )
                              ],
                            ),
                          ));
                },
                label: "Incorrect")
          ],
        ),
      ),
    );
  }
}
