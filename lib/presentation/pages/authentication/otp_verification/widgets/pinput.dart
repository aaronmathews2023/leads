import 'package:flutter/material.dart';
import 'package:leads/core/theme/app_colors/app_colors.dart';
import 'package:pinput/pinput.dart';

 PinTheme defaultPinTheme = PinTheme(
  width: 56,
  
  height: 56,
  textStyle: TextStyle(
    fontSize: 20,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w600,
  ),
  decoration: BoxDecoration(
    color: AppColors.kGrey.withOpacity(.4),
    border: Border.all(color: AppColors.white.withOpacity(.4)),
    borderRadius: BorderRadius.circular(20),
  ),
);

final PinTheme focusedPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: TextStyle(
    fontSize: 20,
    color: Color.fromRGBO(30, 60, 87, 1),
    fontWeight: FontWeight.w600,
  ),
  decoration: BoxDecoration(
    border: Border.all(color: Color.fromRGBO(225, 227, 230, 1)),
    borderRadius: BorderRadius.circular(8),
  ),
);

final PinTheme submittedPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: TextStyle(
    fontSize: 20,
    color: Color.fromRGBO(30, 60, 87, 1),
    fontWeight: FontWeight.w600,
  ),
  decoration: BoxDecoration(
    color: Color.fromRGBO(234, 239, 243, 1),
    borderRadius: BorderRadius.circular(20),
    border: Border.all(color: Color.fromRGBO(219, 225, 228, 1)),
  ),
);
