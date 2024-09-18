import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  final List<String> items; // This list comes from the backend

  const BulletList({
    super.key,
    required this.items, // List of items is required
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
        children: [
          // Use map to convert the list items into a list of Text widgets with bullets
          ...items.map((item) => Text("• $item")).toList(),
         
        ],
      ),
    );
  }
}