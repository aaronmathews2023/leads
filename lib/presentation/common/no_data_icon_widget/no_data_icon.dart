
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leads/constants/assets.dart';

class NoDataIconWidget extends StatelessWidget {
  const NoDataIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(Images.noData,height: 100.h,width: 100.w,),
        const Text("No Data")
      ],
    ));
  }
}
