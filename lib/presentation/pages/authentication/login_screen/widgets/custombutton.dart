import 'package:flutter/material.dart';
import 'package:leads/routes/app_route.dart';
import 'package:leads/theme/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.color,
    this.width,
    this.padding,
  });

  final VoidCallback onPressed;
  final String label;
  final Color? color;
  final double? width;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        // () {
        //   if (formkey.currentState?.validate() ?? false) {
        //     Navigator.pushNamed(
        //       context,
        //       AppRotes.OTPVERIFY,
        //       arguments: phonecontroller.text,
        //     );
        //   }
        // },
        style: ElevatedButton.styleFrom(
            backgroundColor: color ?? black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              // Rounded corners
            ),
            padding: padding,
            fixedSize: Size.fromWidth(width ?? double.maxFinite)),
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ));
  }
}
