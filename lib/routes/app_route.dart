// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:leads/presentation/pages/authentication/login_screen/login_screen.dart';
import 'package:leads/presentation/pages/authentication/onboarding/onboarding_screen.dart';
import 'package:leads/presentation/pages/authentication/otp_verification/screen_otp_verify.dart';
import 'package:leads/presentation/pages/authentication/splash_screen/splash_screen.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/Solultions/solution.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/daily_quiz/daily_quiz.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/daily_quiz_result/daily_result.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/driving_criteria/driving_certeria.dart';

import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/exam_result/exam_result.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/forms/forms.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/instructions/instructions.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/learners_partice/learners_partice.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/modelexam/modelexam.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/question_paper1/question_paper1.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/questionbank/questionbank.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/modelexam/quiz_solution/quiz_solution.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/rto_office/rto_office.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/theory_paper/theory_paper.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/websites/website.dart';
import 'package:leads/presentation/pages/screen2/screen2.dart';
import 'package:leads/presentation/pages/screen3/screen3.dart';
import 'package:leads/presentation/pages/screen4/screen4.dart';

import '../presentation/pages/dashboard/dash_screen.dart';
import '../presentation/pages/dashboard/pages/home_screen/home_screen.dart';

class AppRotes {
  static const String SPLASH = '/';
  static const String BORDING = '/bording';
  static const String LOGIN = '/login';
  static const String OTPVERIFY = '/otpscreen';
  static const String INSTRUCTION = '/instruction';
  static const String BOTTOMFIRSTPPAGE = '/bottomfirstpage';
  static const String HOMESCREEN = '/homescreen';
  static const String SCREEN2 = '/screen2';
  static const String SCREEN3 = '/screen3';
  static const String SCREEN4 = '/screen4';
  static const String MODELEXAM = '/Modelexam';
  static const String QUESTION = '/Qusetion';
  static const String EXAMRESULT = '/Examresult';
  static const String SOLUTION = '/solution';
  static const String QBANK = '/qbank';
  static const String QUIZ = '/quiz';
  static const String DAILYRESULT = '/dailyresult';
  static const String QUIZSOLUTION = "/quizsolution";
  static const String PRACTICE = "/pratice";
  static const String DRIVINGCRITERIA = "/drivingcriteria";
  static const String FORMS = '/forms';
  static const String RTOOFFICE = '/rtooffice';
  static const String WEBSITE = '/website';
  static const String THEORYPARTICE = '/theorypartice';

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
        return MaterialPageRoute(builder: (_) => DashBoardScreen());
      case HOMESCREEN:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case SCREEN2:
        return MaterialPageRoute(builder: (_) => Screen2());
      case SCREEN3:
        return MaterialPageRoute(builder: (_) => Screen3());
      case SCREEN4:
        return MaterialPageRoute(builder: (_) => Screen4());
      case SOLUTION:
        return MaterialPageRoute(builder: (_) => Solution());
      case QBANK:
        return MaterialPageRoute(builder: (_) => Questionbank());
      case QUIZ:
        return MaterialPageRoute(builder: (_) => DailyQuiz());
      case DAILYRESULT:
        return MaterialPageRoute(builder: (_) => DailyResult());
      case QUIZSOLUTION:
        return MaterialPageRoute(builder: (_) => QuizSolution());
      case PRACTICE:
        return MaterialPageRoute(builder: (_) => LearnersPartice());
      case DRIVINGCRITERIA:
        return MaterialPageRoute(builder: (_) => DrivingCerteria());
      case FORMS:
        return MaterialPageRoute(builder: (_) => FromsR());
      case RTOOFFICE:
        return MaterialPageRoute(builder: (_) => RtoOffice());
      case WEBSITE:
        return MaterialPageRoute(builder: (_) => Website());
      case THEORYPARTICE:
        return MaterialPageRoute(builder: (_) => TheoryPaper());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
