import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({
    super.key,
    required this.title,
    required this.icon,
    required this.subtitle,
    required this.color,
  });

  final String title;
  final IconData icon;
  final String subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 22,
          ),
        ),
        Gap(8.h),
        Row(
          children: [
            Icon(
              icon,
              size: 25,
              color: color,
            ),
            Gap(4.w),
            Text(subtitle,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        )
      ],
    );
  }
}
