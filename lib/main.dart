import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:leads/core/app_bloc_providers/app_bloc_providers.dart';
import 'package:leads/core/hive_db_type_adapters/hive_db_adapters.dart';
import 'package:leads/core/singleton/singleton_classes.dart';
import 'package:leads/core/theme/app_colors/app_colors.dart';
import 'package:leads/core/routes/app_pages.dart';


void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  // SemanticsBinding.instance.ensureSemantics();
  await setupDependency();
  await Hive.initFlutter();
  await setupHiveAdapters();
   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color.fromRGBO(170, 169, 169, 1),
  ));
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: false,
        designSize: const Size(360, 813),
        builder: (context, child) => MultiBlocProvider(
          providers:appBlocProviders ,
          child: MaterialApp(
              builder: FToastBuilder(),
          debugShowCheckedModeBanner: false,
                
          theme:
              ThemeData.dark().copyWith(scaffoldBackgroundColor: AppColors.appBgColor),
          initialRoute: AppPages.initialRoute, 
          onGenerateRoute: AppPages.generateRoute,
                ),
        ),
    );
  }
}
