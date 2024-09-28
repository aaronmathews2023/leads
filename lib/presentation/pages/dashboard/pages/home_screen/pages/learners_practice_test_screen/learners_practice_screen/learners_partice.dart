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
        title: Text("Practice"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 42,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff161616),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Select Qn Type"),
                  Icon(Icons.keyboard_arrow_down),
                  Text("1/222"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Spacer(),
                Icon(
                  Icons.bookmark_outline,
                  size: 30,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Which psychologist is most associated with the concept of self-actualization?",
              overflow: TextOverflow.clip,
            ),
            SizedBox(
              height: 40,
            ),
            ContainerPartice(
                option: "Which is pyschologist is most", isSelected: true),
            SizedBox(
              height: 20,
            ),
            ContainerPartice(
                option: "Which is pyschologist is most", isSelected: null),
            SizedBox(
              height: 20,
            ),
            ContainerPartice(
                option: "Which is pyschologist is most", isSelected: null),
            SizedBox(
              height: 20,
            ),
            ContainerPartice(
                option: "Which is pyschologist is most", isSelected: false),
            CustomButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (ctx) => Container(
                            width: double.maxFinite,
                            color: Color(0xff050B10),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
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
