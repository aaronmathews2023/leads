import 'package:flutter/material.dart';

class Website extends StatelessWidget {
  const Website({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Webiste"),
      ),
      body: Column(
        children: [Text("Website")],
      ),
    );
  }
}
