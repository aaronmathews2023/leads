import 'package:flutter/material.dart';
import 'package:leads/constants/assets.dart'; // Assuming assets are configured
import 'package:leads/core/theme/text_styles/app_text_styles.dart';
import 'package:leads/presentation/pages/authentication/login_screen/widgets/custombutton.dart';
import 'package:leads/presentation/pages/authentication/login_screen/widgets/textformfield.dart'; // Assuming this contains your custom phone field widget
import 'package:leads/core/routes/app_route.dart';
import 'package:leads/theme/colors.dart';
import 'package:leads/validation/common_validation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Log in',
                  style: AppTextStyles.h1()?.copyWith(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Please confirm your country code and enter your phone number.',
                  style: AppTextStyles.h2().copyWith(
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 30),
                // Country code and phone number input section
                const Divider(color: Colors.grey),
                const SizedBox(height: 10),
                const Row(
                  children: [
                   
                    Icon(Icons.flag, color: Colors.white), // Example for flag
                    SizedBox(width: 10),
                    Text(
                      'India',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(color: Colors.grey),
                // Phone number field
                Form(
                  key: formKey,
                  child: CustomPhoneNumberField(
                    controller: phoneController,
                    validator: (value) {
                      return validateMobileNumber(value);
                    },
                  ),
                ),
              ],
            ),
            // Get OTP Button
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Center(
                child: CustomButton(
                  label: 'Get OTP',
                  width: size.width * 0.75,
                  color: Colors.black,
                  bgcolor: white,

                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.OTPVERIFY,
                        arguments: phoneController.text,
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
