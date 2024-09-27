import 'package:flutter/material.dart';
import 'package:leads/core/theme/text_styles/app_text_styles.dart';
import 'package:leads/presentation/pages/authentication/otp_verification/widgets/pinput.dart';
import 'package:leads/core/routes/app_route.dart';
import 'package:leads/theme/colors.dart';

import 'package:pinput/pinput.dart';

import '../login_screen/widgets/custombutton.dart';

class ScreenOtpVerify extends StatelessWidget {
  final String phoneNumber;

  const ScreenOtpVerify({Key? key, required this.phoneNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Verify OTP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "OTP Verification",
                    style: AppTextStyles.h1(),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "OTP has been sent to",
                    style: AppTextStyles.h2(),
                  ),
                  Text(
                    ' $phoneNumber',
                    style: TextStyle(color: Colors.red[900]),
                  ),
                ],
              ),
            ),
            Pinput(
              length: 4,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              validator: (s) {
                // Allow any OTP and remove validation or provide a generic message
                return s?.isEmpty ?? true ? 'Please enter OTP' : null;
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) {
                // Handle OTP completion
                print("Entered OTP: $pin");
              },
              onChanged: (pin) {
                // Handle OTP changes if needed
              },
            ),
            CustomButton(
              label: 'Verify',
              width: size.width * 0.75,
              color: black,
              bgcolor: white,
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  AppRoutes.PRACTICE,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
