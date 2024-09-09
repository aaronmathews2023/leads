import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:leads/bottomnav/screen_nav.dart';
import 'package:leads/theme/colors.dart';


CurvedNavigationBar bottomNav(BuildContext context) {
  return CurvedNavigationBar(
    index: 0,
    height: 60.0,
    items: const <Widget>[
      Icon(Icons.home, size: 30, color: red),
      Icon(Icons.search, size: 30, color: red),
      Icon(Icons.add, size: 30, color: red),
      Icon(Icons.chat, size: 30, color: red),
      Icon(Icons.person, size: 30, color: red),
    ],
    color: Theme.of(context).brightness == Brightness.light ? whiteColor : black,
    buttonBackgroundColor: Theme.of(context).brightness == Brightness.light ? whiteColor : black,
    backgroundColor: Theme.of(context).brightness == Brightness.light ? Colors.white : Colors.black,
    animationCurve: Curves.easeInOut,
    animationDuration: const Duration(milliseconds: 600),
    onTap: (index) {
      currentPage.value = index;
 },
);
}