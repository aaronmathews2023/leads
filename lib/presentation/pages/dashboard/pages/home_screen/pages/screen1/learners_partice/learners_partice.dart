import 'package:flutter/material.dart';

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
                children: [
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
              children: [
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
          ],
        ),
      ),
    );
  }
}
