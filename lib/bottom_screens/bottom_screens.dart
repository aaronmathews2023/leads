import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../theme/colors.dart';

GNav bottomNav(BuildContext context, void Function(int)? onTap) {
  // return CurvedNavigationBar(
  //   index: 0,
  //   height: 60.0,
  //   items: const <Widget>[
  //     Icon(Icons.home, size: 30, color: white),
  //     Icon(Icons.search, size: 30, color: white),
  //     Icon(Icons.add, size: 30, color: white),
  //     Icon(Icons.chat, size: 30, color: white),
  //     Icon(Icons.person, size: 30, color: white),
  //   ],
  //   color:
  //       Theme.of(context).brightness == Brightness.light ? whiteColor : black,
  //   buttonBackgroundColor:
  //       Theme.of(context).brightness == Brightness.light ? whiteColor : black,
  //   backgroundColor: Theme.of(context).brightness == Brightness.light
  //       ? Colors.white
  //       : Colors.black,
  //   animationCurve: Curves.easeInOut,
  //   animationDuration: const Duration(milliseconds: 600),
  //   onTap: onTap,
  // );
  return GNav(
      rippleColor: Colors.grey[800]!, // tab button ripple color when pressed
      hoverColor: Colors.grey[700]!, // tab button hover color
      haptic: true, // haptic feedback
      tabBorderRadius: 15,
      tabActiveBorder:
          Border.all(color: Colors.black, width: 1), // tab button border
      tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
      tabShadow: [
        BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
      ], // tab button shadow
      onTabChange: onTap,
      curve: Curves.easeOutExpo, // tab animation curves
      duration: Duration(milliseconds: 900), // tab animation duration
      gap: 8, // the tab button gap between icon and text
      color: Colors.grey[800], // unselected icon color
      activeColor: Colors.grey, // selected icon and text color
      iconSize: 24, // tab button icon size
      tabBackgroundColor:
          Colors.red.withOpacity(0.7), // selected tab background color
      padding: EdgeInsets.symmetric(
          horizontal: 20, vertical: 5), // navigation bar padding
      tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.person,
          text: 'Profile',
        ),
      ]);
}
