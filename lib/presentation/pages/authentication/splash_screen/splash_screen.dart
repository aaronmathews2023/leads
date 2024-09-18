import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

import 'package:leads/presentation/pages/authentication/splash_screen/widgets/splash_body_widget/splash_widget.dart';
import 'package:leads/routes/app_route.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to login page after 6 seconds
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacementNamed(context, AppRotes.BORDING);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white, // Change the background color if necessary
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Centered Image
          splash_image(),

          loading(),
        ],
      ),
    );
  }
}
