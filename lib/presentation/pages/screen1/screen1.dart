import 'package:flutter/material.dart';
import 'package:leads/core/theme/text_styles/app_text_styles.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                "Lead",
                style: AppTextStyles.h1(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
