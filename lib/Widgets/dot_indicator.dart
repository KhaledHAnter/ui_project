import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_project/constants.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, this.isActive = false});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: AnimatedContainer(
        duration: const Duration(microseconds: 300),
        height: 8.h,
        width: 8.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? kprimaryColor : Colors.grey,
        ),
      ),
    );
  }
}
