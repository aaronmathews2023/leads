import 'package:flutter/material.dart';
import 'package:leads/bottom_screens/bottom_screens.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/home_screen.dart';
import 'package:leads/presentation/pages/screen2/screen2.dart';
import 'package:leads/presentation/pages/screen3/screen3.dart';
import 'package:leads/presentation/pages/screen4/screen4.dart';

import 'pages/home_screen/home_screen.dart';

class DashBoardScreen extends StatefulWidget {
  DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final List<Widget> pages = [
    HomeScreen(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];

  late ValueNotifier<int> currentPage;
  @override
  void initState() {
    currentPage = ValueNotifier(0);
    super.initState();
  }

  @override
  void dispose() {
    currentPage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ValueListenableBuilder<int>(
        valueListenable: currentPage,
        builder: (context, value, child) => IndexedStack(
          index: value,
          children: pages,
        ),
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: currentPage,
        builder: (context, value, child) => bottomNav(context, (index) {
          currentPage.value = index;
        }),
      ),
    );
  }
}
