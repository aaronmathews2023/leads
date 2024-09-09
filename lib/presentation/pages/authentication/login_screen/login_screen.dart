import 'package:flutter/material.dart';
import 'package:leads/presentation/pages/authentication/login_screen/widgets/textformfield.dart';
import 'package:leads/presentation/pages/authentication/otp_verification/screen_otp_verify.dart';
import 'package:leads/routes/app_route.dart';
import 'package:leads/validation/common_validation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phonecontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  "Enter your Moblie Number",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  "you will recieve an OTP to verify your number",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
          Form(
            key: formkey,
            child: CustomPhoneNumberField(
              controller: phonecontroller,
              validator: validateMobileNumber,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Container(
              width: size.width * 0.75,
              child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState?.validate() ?? false) {
                      Navigator.pushNamed(
                        context,
                        AppRotes.OTPVERIFY,
                        arguments: phonecontroller.text,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      // Rounded corners
                    ),
                  ),
                  child: Text(
                    "Send OTP",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
