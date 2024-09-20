import 'package:flutter/material.dart';
import 'package:leads/core/theme/text_styles/app_text_styles.dart';

class Cards extends StatelessWidget {
  const Cards({
    super.key,
    this.text, 
    this.color, 
  });

  final String? text; 
  final Color? color; 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100, 
      height: 30, 
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: color ?? Colors.blue[900], 
        child: Center(
          child: Text(
            text ?? "Total Qn", 
            style: AppTextStyles.h3(),
          ),
        ),
      ),
    );
  }
}
