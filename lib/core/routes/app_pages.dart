import 'package:flutter/material.dart';
import 'package:leads/core/routes/app_route.dart';

import 'package:leads/presentation/pages/authentication/login_screen/login_screen.dart';
import 'package:leads/presentation/pages/authentication/onboarding/onboarding_screen.dart';
import 'package:leads/presentation/pages/authentication/otp_verification/screen_otp_verify.dart';
import 'package:leads/presentation/pages/authentication/splash_screen/splash_screen.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/solultions/solution.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/daily_quiz/daily_quiz.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/daily_quiz_result/daily_result.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/driving_criteria/driving_certeria.dart';

import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/exam_result/exam_result.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/forms/forms.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/instructions/instructions.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/learners_practice_test_screen/learners_practice_screen/learners_practice.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/modelexam/modelexam.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/question_paper1/question_paper1.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/question_bank_screen/questionbank/questionbank.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/modelexam/quiz_solution/quiz_solution.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/rto_office/rto_office.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/theory_papers_screen/theory_paper/theory_paper.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/websites/website.dart';
import 'package:leads/presentation/pages/screen2/screen2.dart';
import 'package:leads/presentation/pages/screen3/screen3.dart';
import 'package:leads/presentation/pages/screen4/screen4.dart';
// import 'package:leads/routes/app_route.dart';


import '../../presentation/pages/dashboard/dash_screen.dart';
import '../../presentation/pages/dashboard/pages/home_screen/home_screen.dart';

class AppPages {
  static const String initialRoute = AppRoutes.SPLASH;
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.SPLASH:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppRoutes.MODELEXAM:
        return MaterialPageRoute(builder: (_) => ModelExamsScreen());
      case AppRoutes.BORDING:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case AppRoutes.LOGIN:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppRoutes.OTPVERIFY:
        final phoneNumber = settings.arguments as String?;
        return MaterialPageRoute(
          builder: (_) => ScreenOtpVerify(phoneNumber: phoneNumber ?? ''),
        );
      case AppRoutes.INSTRUCTION:
        return MaterialPageRoute(builder: (_) => const Instructions());
      case AppRoutes.QUESTION:
        return MaterialPageRoute(builder: (_) => const QuestionPaper1());
      case AppRoutes.EXAMRESULT:
        return MaterialPageRoute(builder: (_) => const ExamResult());
      case AppRoutes.BOTTOMFIRSTPPAGE:
        return MaterialPageRoute(builder: (_) => const DashBoardScreen());
      case AppRoutes.HOMESCREEN:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRoutes.SCREEN2:
        return MaterialPageRoute(builder: (_) => const Screen2());
      case AppRoutes.SCREEN3:
        return MaterialPageRoute(builder: (_) => const Screen3());
      case AppRoutes.SCREEN4:
        return MaterialPageRoute(builder: (_) => const Screen4());
      case AppRoutes.SOLUTION:
        return MaterialPageRoute(builder: (_) => const Solution());
      case AppRoutes.QBANK:
        return MaterialPageRoute(builder: (_) => const Questionbank());
      case AppRoutes.QUIZ:
        return MaterialPageRoute(builder: (_) => const DailyQuiz());
      case AppRoutes.DAILYRESULT:
        return MaterialPageRoute(builder: (_) => const DailyResult());
      case AppRoutes.QUIZSOLUTION:
        return MaterialPageRoute(builder: (_) => const QuizSolution());
      case AppRoutes.PRACTICE:
        return MaterialPageRoute(builder: (_) => const LearnersPartice());
      case AppRoutes.DRIVINGCRITERIA:
        return MaterialPageRoute(builder: (_) => const DrivingCerteria());
      case AppRoutes.FORMS:
        return MaterialPageRoute(builder: (_) => const FromsR());
      case AppRoutes.RTOOFFICE:
        return MaterialPageRoute(builder: (_) => const RtoOffice());
      case AppRoutes.WEBSITE:
        return MaterialPageRoute(builder: (_) => const Website());
      case AppRoutes.THEORYPARTICE:
        return MaterialPageRoute(builder: (_) => const TheoryPaper());
    case AppRoutes.DASHBOARD:
        return MaterialPageRoute(builder: (_) => const DashBoardScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }

}