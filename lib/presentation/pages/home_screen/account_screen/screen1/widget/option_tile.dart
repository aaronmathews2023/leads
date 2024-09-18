import 'package:flutter/material.dart';
import 'package:leads/theme/colors.dart';

class OptionTile extends StatelessWidget {
  final String option;
  final bool isSelected;
  const OptionTile({super.key, required this.option, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: isSelected ? Colors.grey[800] : Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: Row(
        children: [
          Icon(
            isSelected
                ? Icons.radio_button_checked
                : Icons.radio_button_unchecked,
            color: white,
          ),
          const SizedBox(width: 10),
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
