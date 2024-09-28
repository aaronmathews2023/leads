import 'package:flutter/material.dart';
import 'package:leads/infrastructure/datasources/local/shared_pref/shared_pref.dart';
// ignore: depend_on_referenced_packages

import 'package:leads/presentation/pages/authentication/splash_screen/widgets/splash_body_widget/splash_widget.dart';
import 'package:leads/core/routes/app_route.dart';
import 'package:leads/presentation/pages/dashboard/dash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to login page after 6 seconds
    
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
    final isFirstLogin = await SharedPref().getFirstTime();
    if(isFirstLogin==null || isFirstLogin==true){
      Future.delayed(const Duration(seconds: 4), () {
     Navigator.pushReplacementNamed(context, AppRoutes.BORDING);
    });
 
    }else{
       Future.delayed(const Duration(seconds: 4), () {
             Navigator.pushReplacementNamed(context, AppRoutes.DASHBOARD);
          
    });

    }
    },);
    return const Scaffold(
      backgroundColor: Colors.white, // Change the background color if necessary
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Centered Image
          SplashImage(),

          LoadingWidget(),
        ],
      ),
    );
  }
}
