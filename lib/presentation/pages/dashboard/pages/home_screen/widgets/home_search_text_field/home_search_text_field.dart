
import 'package:flutter/material.dart';

class BuildSearchHomeTextField extends StatelessWidget {
  
  const BuildSearchHomeTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Kerala State RTO Learners Exam",
            suffixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
