import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

final PinTheme defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: TextStyle(
    fontSize: 20,
    color: Color.fromRGBO(30, 60, 87, 1),
    fontWeight: FontWeight.w600,
  ),
  decoration: BoxDecoration(
    border: Border.all(color: Color.fromRGBO(41, 31, 31, 1)),
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
    border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
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
    border: Border.all(color: Color.fromRGBO(30, 32, 34, 1)),
  ),
);
