import 'package:flutter/material.dart';
import 'package:leads/core/theme/text_styles/app_text_styles.dart';
import 'package:leads/presentation/pages/authentication/login_screen/widgets/custombutton.dart';
import 'package:leads/presentation/pages/authentication/login_screen/widgets/textformfield.dart';
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
                Text("Enter your Moblie Number", style: AppTextStyles.h1()),
                Text("you will recieve an OTP to verify your number",
                    style: AppTextStyles.h2())
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
          CustomButton(
            label: "Send OTP",
            width: size.width * 0.75,
            onPressed: () {
              if (formkey.currentState?.validate() ?? false) {
                Navigator.pushNamed(
                  context,
                  AppRotes.OTPVERIFY,
                  arguments: phonecontroller.text,
                );
              }
            },
          )
        ],
      ),
    );
  }
}
