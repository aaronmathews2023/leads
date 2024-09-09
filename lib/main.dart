import 'package:flutter/material.dart';
import 'package:leads/routes/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: AppRotes.SPLASH, // Set the initial route
      onGenerateRoute: AppRotes.generateRoute,
    );
  }
}
