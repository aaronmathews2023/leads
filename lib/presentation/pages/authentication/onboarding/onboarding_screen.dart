import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leads/constants/assets.dart';
import 'package:leads/presentation/pages/authentication/login_screen/widgets/custombutton.dart';
import 'package:leads/routes/app_route.dart';
import 'package:leads/theme/colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Add some space using Padding or SizedBox
          SizedBox(
              height: 40), // You can adjust the height as per your requirement
          Center(
            child: SvgPicture.asset(
              Images.logoImage,
              width: 150,
              height: 150,
            ),
          ),
          // SvgPicture.asset("")
          Text(
            "Learn Easy\nDrive Smart!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20), // You can adjust the font size here
          ),
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                AppRotes.LOGIN,
              );
            },
            label: "Let's GO",
            color: white,
            bgcolor: red,
          ),
        ],
      ),
    );
  }
}
