import 'package:flutter/material.dart';

import 'package:leads/routes/app_route.dart';

import 'widgets/grid_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          // leading: IconButton(
          //   icon: const Icon(Icons.arrow_back, color: Colors.white),
          //   onPressed: () {},
          // ),
          title: const Text("Exams", style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              icon: const Icon(Icons.language, color: Colors.white),
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
                    suffixIcon: const Icon(Icons.search),
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
                padding: const EdgeInsets.all(16),
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AppRotes.LOGIN);
                    },
                    child: const HomeScreenGridTile(
                      text2color: Color(0xffFF5F69),
                      text1: "LEARNERS",
                      text2: 'PARCTICE',
                      subtitle: 'Test your knowledge  stress free',
                      imagePath: "",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, AppRotes.MODELEXAM);
                    },
                    child: const HomeScreenGridTile(
                      text1: 'MODEL',
                      text2: 'EXAM',
                      text2color: Color(0xffF7B951),
                      subtitle: 'Time-bound test similar to Exam',
                      imagePath: "",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AppRotes.QBANK);
                    },
                    child: const HomeScreenGridTile(
                        text2color: Color(0xffFF5F69),
                        text1: 'QUESTION',
                        text2: 'BANK',
                        subtitle: 'Question Bank',
                        imagePath: ''),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AppRotes.QUIZ);
                    },
                    child: const HomeScreenGridTile(
                        text2color: Color(0xff3660B0),
                        text1: 'DAILY',
                        text2: 'QUIZ',
                        subtitle: 'Time-bound test similar to Exam',
                        imagePath: ''),
                  )
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
          items: const [
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
