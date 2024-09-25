import 'package:flutter/material.dart';
import 'package:leads/theme/colors.dart';

class ContainerPartice extends StatelessWidget {
  const ContainerPartice({
    super.key,
    required this.option,
    required this.isSelected,
  });

  final String option;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isSelected == true
            ? Color(0xff239076)
            : isSelected == false
                ? Color(0xffE46B6B)
                : Color(0xff050B10),
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
    );
  }
}
