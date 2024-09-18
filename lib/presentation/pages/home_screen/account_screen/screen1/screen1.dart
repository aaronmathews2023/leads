import 'package:flutter/material.dart';
import 'package:leads/core/theme/text_styles/app_text_styles.dart';
import 'package:leads/presentation/pages/home_screen/account_screen/screen1/widget/screen1_widget.dart';
import 'package:leads/routes/app_route.dart';
import 'package:leads/theme/colors.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {},
          ),
          title: Text("Exams", style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              icon: Icon(Icons.language, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Kerala State RTO Learners Exam",
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1 / 1.7,
                padding: EdgeInsets.all(16),
                children: [
                  DashboardGridTile(
                    title: 'LEARNERS\nPRATICE',
                    subtitle: 'Test your knowledge  stress free',
                    imagePath: "",
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, AppRotes.MODELEXAM);
                    },
                    child: DashboardGridTile(
                      title: 'MODEL\nEXAM',
                      subtitle: 'Time-bound test similar to Exam',
                      imagePath: "",
                    ),
                  ),
                  DashboardGridTile(
                      title: 'QUESTION\nBANK',
                      subtitle: 'Question Bank',
                      imagePath: ''),
                  DashboardGridTile(
                      title: 'DAILY',
                      subtitle: 'Time-bound test similar to Exam',
                      imagePath: '')
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.white,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.check_circle_outline),
              label: 'Driving License Criteria',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_copy),
              label: 'Forms',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'RTO Office',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.web),
              label: 'Website',
            ),
          ],
        ),
      ),
    );
  }
}
