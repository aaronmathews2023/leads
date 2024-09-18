import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:leads/constants/assets.dart';

// ignore: camel_case_types
class loading extends StatelessWidget {
  const loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 30.0),
      child: SpinKitFadingCircle(
        color: Colors.blue, // Change the color if needed
        size: 50.0,
      ),
    );
  }
}
class splash_image extends StatelessWidget {
  const splash_image({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Image.asset(Images.splashimage,// Replace with your image asset
          width: 450, // Adjust size as necessary
          height: 450,
        ),
      ),
    );
  }
}
