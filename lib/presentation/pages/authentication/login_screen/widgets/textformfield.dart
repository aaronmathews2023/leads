import 'package:flutter/material.dart';
import 'package:leads/theme/colors.dart';

class CustomPhoneNumberField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;

  CustomPhoneNumberField({
    Key? key,
    required this.controller,
    this.hintText = 'Enter your phone number',
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.78,
      child: TextFormField(
        controller: controller,

        keyboardType: TextInputType.phone, // Use phone keyboard type
        decoration: InputDecoration(
          labelText: hintText,
          labelStyle: TextStyle(color: grey),
          prefixIcon: Icon(
            Icons.phone,
            color: grey,
          ), // Phone icon
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: blue), // Grey border color when focused
          ),
        ),
        validator: validator,
      ),
    );
  }
}
