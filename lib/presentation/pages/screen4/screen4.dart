import 'package:flutter/material.dart';
import 'package:leads/presentation/pages/screen4/widget/profile_container.dart';
import 'package:leads/theme/colors.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Spacer(),
            ProfileContainer(
              text: "Share App",
              icons: Icons.share,
              bgcolor: Color(0xffFFFFFF),
            ),
            SizedBox(height: 10),
            ProfileContainer(
              text: "Disclaimer",
              icons: Icons.warning,
              bgcolor: Color(0xffFDBF00),
            ),
            SizedBox(height: 10),
            ProfileContainer(
              text: "Privacy Policy",
              icons: Icons.verified_user,
              bgcolor: Color(0xffF5B92D),
            ),
            SizedBox(height: 10),
            ProfileContainer(
              text: "Terms & Condition",
              icons: Icons.newspaper,
              bgcolor: Color(0xff48A4DF),
            ),
            SizedBox(
              height: 90,
            )
          ],
        ),
      ),
    );
  }
}
