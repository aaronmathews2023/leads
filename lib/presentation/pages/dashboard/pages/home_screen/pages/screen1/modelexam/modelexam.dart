import 'package:flutter/material.dart';
import 'package:leads/presentation/pages/authentication/login_screen/widgets/custombutton.dart';
import 'package:leads/core/routes/app_route.dart';
import 'package:leads/theme/colors.dart';

class ModelExamsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Model Exams",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey[500]),
                        ),
                      ),
                    ),
                    Icon(Icons.search, color: Colors.grey[500]),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      Icons.description,
                      size: 40,
                      color: blue,
                    ),
                    title: Text('Question Paper1'),
                    subtitle: Text('20 Qn.1hr'),
                    trailing: SizedBox(
                        width: 90,
                        height: 48,
                        child: CustomButton(
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.INSTRUCTION);
                          },
                          label: 'Start',
                          color: white,
                        )),
                  );
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(vertical: .0),
                  //   child: GestureDetector(
                  //     onTap: () {
                  //       // Navigate to the next page
                  //       Navigator.pushNamed(
                  //           context, '/nextPage'); // Replace with your route
                  //     },
                  //     child: QuestionPaperTile(),
                  //   ),
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
