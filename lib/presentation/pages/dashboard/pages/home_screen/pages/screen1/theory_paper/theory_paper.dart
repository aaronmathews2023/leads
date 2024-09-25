import 'package:flutter/material.dart';

class TheoryPaper extends StatefulWidget {
  const TheoryPaper({super.key});

  @override
  State<TheoryPaper> createState() => _TheoryPaperState();
}

class _TheoryPaperState extends State<TheoryPaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Theory Paper"),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
              child: ExpansionTile(
                title: Text("Item"),
                children: [Text("Descriptiom")],
              ),
            );
          },
        ));
  }
}
