import 'package:flutter/material.dart';
import 'package:leads/presentation/pages/authentication/otp_verification/widgets/pinput.dart';
import 'package:leads/routes/app_route.dart';
import 'package:pinput/pinput.dart';

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
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "OTP has been sent to",
                    style: TextStyle(fontSize: 15, color: Colors.grey[600]),
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
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Container(
                width: size.width * 0.75,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        AppRotes.BOTTOMFIRSTPPAGE,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Verify",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
