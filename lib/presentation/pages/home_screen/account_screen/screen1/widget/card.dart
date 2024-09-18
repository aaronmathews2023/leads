import 'package:flutter/material.dart';
import 'package:leads/core/theme/text_styles/app_text_styles.dart';

class Cards extends StatelessWidget {
  const Cards({
    super.key,
    this.text, // Optional text
    this.color, // Optional color
  });

  final String? text; // Nullable String to allow default value
  final Color? color; // Nullable Color to allow default value

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100, // Set a fixed width
      height: 30, // Set a fixed height
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: color ?? Colors.blue[900], // Default color if none is provided
        child: Center(
          child: Text(
            text ?? "Total Qn", // Default text if none is provided
            style: AppTextStyles.h3(),
          ),
        ),
      ),
    );
  }
}
