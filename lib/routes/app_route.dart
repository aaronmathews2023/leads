import 'package:flutter/material.dart';
import 'package:leads/bottomnav/screen_nav.dart';
import 'package:leads/presentation/pages/authentication/login_screen/login_screen.dart';
import 'package:leads/presentation/pages/authentication/onboarding/onboarding_screen.dart';
import 'package:leads/presentation/pages/authentication/otp_verification/screen_otp_verify.dart';
import 'package:leads/presentation/pages/authentication/splash_screen/splash_screen.dart';
import 'package:leads/presentation/pages/home_screen/account_screen/screen1/exam_result.dart';
import 'package:leads/presentation/pages/home_screen/account_screen/screen1/instructions.dart';
import 'package:leads/presentation/pages/home_screen/account_screen/screen1/modelexam.dart';
import 'package:leads/presentation/pages/home_screen/account_screen/screen1/question_paper1.dart';
import 'package:leads/presentation/pages/home_screen/account_screen/screen1/screen1.dart';
import 'package:leads/presentation/pages/screen2/screen2.dart';
import 'package:leads/presentation/pages/screen3/screen3.dart';
import 'package:leads/presentation/pages/screen4/screen4.dart';

class AppRotes {
  static const String SPLASH = '/';
  static const String BORDING = '/bording';
  static const String LOGIN = '/login';
  static const String OTPVERIFY = '/otpscreen';
  static const String INSTRUCTION = '/instruction';
  static const String BOTTOMFIRSTPPAGE = '/bottomfirstpage';
  static const String SCREEN1 = '/screen1';
  static const String SCREEN2 = '/screen2';
  static const String SCREEN3 = '/screen3';
  static const String SCREEN4 = '/screen4';
  static const String MODELEXAM = '/Modelexam';
  static const String QUESTION = '/Qusetion';
  static const String EXAMRESULT = '/Examresult';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case MODELEXAM:
        return MaterialPageRoute(builder: (_) => ModelExamsScreen());
      case BORDING:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case LOGIN:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case OTPVERIFY:
        final phoneNumber = settings.arguments as String?;
        return MaterialPageRoute(
          builder: (_) => ScreenOtpVerify(phoneNumber: phoneNumber ?? ''),
        );
      case INSTRUCTION:
        return MaterialPageRoute(builder: (_) => Instructions());
      case QUESTION:
        return MaterialPageRoute(builder: (_) => QuestionPaper1());
      case EXAMRESULT:
        return MaterialPageRoute(builder: (_) => ExamResult());
      case BOTTOMFIRSTPPAGE:
        return MaterialPageRoute(builder: (_) => BottomNavFirstPage());
      case SCREEN1:
        return MaterialPageRoute(builder: (_) => Screen1());
      case SCREEN2:
        return MaterialPageRoute(builder: (_) => Screen2());
      case SCREEN3:
        return MaterialPageRoute(builder: (_) => Screen3());
      case SCREEN4:
        return MaterialPageRoute(builder: (_) => Screen4());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
