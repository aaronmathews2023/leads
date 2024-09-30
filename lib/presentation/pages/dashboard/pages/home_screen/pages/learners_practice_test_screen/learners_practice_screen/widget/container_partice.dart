import 'package:flutter/material.dart';
import 'package:leads/core/theme/app_colors/app_colors.dart';
import 'package:leads/theme/colors.dart';

class ContainerPartice extends StatelessWidget {
  const ContainerPartice({
    super.key,
    required this.option,
    required this.selected,required this.answerIndex, required this.optionIndex, required this.onPress
    
  });

  final String option;
  final int? selected;
  final int? answerIndex;
  final int optionIndex;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.white.withOpacity(.2)),
          color: selected  == answerIndex
              ? Color(0xff239076)
              : (selected == optionIndex) && selected !=answerIndex
                  ? Color(0xffE46B6B)
                  : AppColors.black87,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
                child: Text(
              option,
              style: const TextStyle(color: white, fontSize: 13),
            ))
          ],
        ),
      ),
    );
  }
}
