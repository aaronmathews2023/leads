import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leads/constants/assets.dart';
import 'package:leads/core/theme/text_styles/app_text_styles.dart';
import 'package:leads/presentation/pages/authentication/login_screen/widgets/custombutton.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/instructions/widget/bullet_list.dart';
import 'package:leads/presentation/pages/dashboard/pages/home_screen/pages/screen1/instructions/widget/card.dart';
import 'package:leads/core/routes/app_route.dart';
import 'package:leads/theme/colors.dart';

class Instructions extends StatefulWidget {
  const Instructions({super.key});

  @override
  State<Instructions> createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Instructions', style: AppTextStyles.h1()),
          leading: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.HOMESCREEN);
              },
              icon: Icon(Icons.arrow_back))),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: SvgPicture.asset(
                      Images.exam,
                      width: 150,
                      height: 150,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 35, right: 35, top: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('20', style: AppTextStyles.h2()),
                        Text('10', style: AppTextStyles.h2()),
                        Text('20', style: AppTextStyles.h2()),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Cards(text: 'Total Qn', color: blue),
                      Cards(text: "Minute", color: Colors.green[900]),
                      Cards(
                        text: "Total Mark",
                        color: Colors.red[900],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Center(
                    child: Text(
                      "Question Paper 1",
                      style: AppTextStyles.h1(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  BulletList(
                      items: ['item1', 'item2', 'item 3', 'item4', 'item5']),
                  SizedBox(
                    height: 150,
                  ),
                  CustomButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.QUESTION);
                      },
                      label: "Start"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
