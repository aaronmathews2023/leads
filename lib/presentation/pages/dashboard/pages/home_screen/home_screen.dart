import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leads/application/home_blocs/theory_paper_bloc/bloc/theory_paper_bloc.dart';
import 'package:leads/core/routes/app_route.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/widgets/ciricleavatar.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/widgets/home_search_text_field/home_search_text_field.dart';


import 'package:leads/theme/colors.dart';

import 'widgets/grid_tile.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late   FocusScopeNode _focusScope;
  final List<IconData> icons = [
    Icons.check_circle,
    Icons.description,
    Icons.apartment,
    Icons.tab,
  ];

  final List<String> name = [
    "Driving License Criteria",
    "Forms",
    "RTO Office",
    "Website"
  ];
@override
  void initState() {
    _focusScope =FocusScopeNode();
    super.initState();
  }
  @override
  void dispose() {
_focusScope.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FocusScope(
        node: _focusScope,
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
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: ListView(
              children: [
                const BuildSearchHomeTextField(),
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1 / 1.7,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(16),
                  children: [
                    InkWell(
                      onTap: () {
             _focusScope.unfocus();
                        BlocProvider.of<TheoryPaperBloc>(context).add(const GetTheoryEvent());
                        Navigator.pushNamed(context, AppRoutes.THEORYPARTICE);
                      },
                      child: const HomeScreenGridTile(
                        text2color: Color(0xffFF5F69),
                        text1: "THEORY",
                        text2: 'PAPER',
                        subtitle:
                            'Comprehensive Insights and Concepts for In-depth Understanding',
                        imagePath: "asset/exam_partice.png",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                               _focusScope.unfocus();
                        Navigator.pushNamed(context, AppRoutes.QBANK);
                      },
                      child: const HomeScreenGridTile(
                          text2color: Color(0xffFF5F69),
                          text1: 'QUESTION',
                          text2: 'BANK',
                          subtitle: 'Question Bank',
                          imagePath: 'asset/exam_partice.png'),
                    ),
                    InkWell(
                      onTap: () {
                               _focusScope.unfocus();
                        Navigator.pushReplacementNamed(context, AppRoutes.MODELEXAM);
                      },
                      child: const HomeScreenGridTile(
                        text1: 'MODEL',
                        text2: 'EXAM',
                        text2color: Color(0xffF7B951),
                        subtitle: 'Time-bound test similar to Exam',
                        imagePath: "asset/mark_exam.png",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                               _focusScope.unfocus();
                        Navigator.pushNamed(context, AppRoutes.LOGIN);
                      },
                      child: const HomeScreenGridTile(
                        text2color: Color(0xffFF5F69),
                        text1: "LEARNERS",
                        text2: 'PRACTICE',
                        subtitle: 'Test your knowledge  stress free',
                        imagePath: "asset/exam_partice.png",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                               _focusScope.unfocus();
                        Navigator.pushNamed(context, AppRoutes.QUIZ);
                      },
                      child: const HomeScreenGridTile(
                          text2color: Color(0xff3660B0),
                          text1: 'DAILY',
                          text2: 'QUIZ',
                          subtitle: 'Time-bound test similar to Exam',
                          imagePath: 'asset/mark_exam.png'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 6,
                        childAspectRatio: .8),
                    itemCount: 4,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                                _focusScope.unfocus();
                        if (index == 0) {
                         
                          Navigator.pushNamed(context, AppRoutes.DRIVINGCRITERIA);
                        } else if (index == 1) {
                          Navigator.pushNamed(context, AppRoutes.FORMS);
                        } else if (index == 2) {
                          Navigator.pushNamed(context, AppRoutes.RTOOFFICE);
                        } else if (index == 3) {
                          Navigator.pushNamed(context, AppRoutes.WEBSITE);
                        }
                      },
                      child: CiricleAvatarHome(
                        icon: icons[index],
                        text: name[index],
                      ),
                    ),
                  ),
                )
                // Row(
                //   children: [
                //     CiricleAvatarHome(
                //       color: grey,
                //       icon:
                //     )
                //   ],
                // )
              ],
            ),
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   backgroundColor: Colors.black,
          //   selectedItemColor: Colors.redAccent,
          //   unselectedItemColor: Colors.white,
          //   currentIndex: 0,
          //   items: const [
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.check_circle_outline),
          //       label: 'Driving License Criteria',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.file_copy),
          //       label: 'Forms',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.location_on),
          //       label: 'RTO Office',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.web),
          //       label: 'Website',
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
