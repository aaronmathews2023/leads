
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingPagination extends StatelessWidget {
  const LoadingPagination({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:0.0,bottom: 6),
      child: LoadingAnimationWidget.horizontalRotatingDots(
              color: Colors.white,
              size: 60.h,
            ),
    );
  }
}
