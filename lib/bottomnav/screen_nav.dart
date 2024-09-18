import 'package:flutter/material.dart';
import 'package:leads/bottomnav/widgets/bottom_nav.dart';
import 'package:leads/presentation/pages/home_screen/account_screen/screen1/screen1.dart';
import 'package:leads/presentation/pages/screen2/screen2.dart';
import 'package:leads/presentation/pages/screen3/screen3.dart';
import 'package:leads/presentation/pages/screen4/screen4.dart';

final ValueNotifier<int> currentPage = ValueNotifier(0);

class BottomNavFirstPage extends StatelessWidget {
  BottomNavFirstPage({super.key});

  final List<Widget> pages = [
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];

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
        builder: (context, value, child) => bottomNav(context),
      ),
    );
  }
}
