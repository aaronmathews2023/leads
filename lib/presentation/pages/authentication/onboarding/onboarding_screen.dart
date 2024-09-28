import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leads/constants/assets.dart';
import 'package:leads/constants/dimensions.dart';
import 'package:leads/infrastructure/datasources/local/shared_pref/shared_pref.dart';
import 'package:leads/presentation/pages/authentication/login_screen/widgets/custombutton.dart';
import 'package:leads/presentation/pages/dashboard/dash_screen.dart';
import 'package:leads/core/routes/app_route.dart';
import 'package:leads/theme/colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    print('   dfasfa');
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Add some space using Padding or SizedBox
            // const SizedBox(
            //     height: 40), // You can adjust the height as per your requirement
            const Spacer(),
            Center(
              child: SvgPicture.asset(
                Images.logoImage,
                width: 150,
                height: 150,
              ),
            ),
            // SvgPicture.asset("")
            const Text(
              "Learn Easy Drive Smart!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15), // You can adjust the font size here
            ),
            const Spacer(),
            CustomButton(
              onPressed: () async{
                try {
                  // Navigator.pushNamed(
                  //   context,
                  //   AppRotes.BOTTOMFIRSTPPAGE,
                  // );
                 await SharedPref().setFirstTime(false);
               Navigator.pushReplacementNamed(context, AppRoutes.DASHBOARD);
                } catch (e) {
               
                }
              },
              label: "Let's GO",
              color: black,
              bgcolor: white,
            ),
            kHeight,
          ],
        ),
      ),
    );
  }
}
