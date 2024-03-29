import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:ui_project/constants.dart';

class FoodListItem extends StatelessWidget {
  const FoodListItem(
      {super.key,
      required this.image,
      required this.title,
      required this.rate,
      required this.delivery,
      required this.price});

  final String image, title, rate, delivery, price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 85.w,
            height: 85.h,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(32),
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          Gap(8.w),
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: kscondaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 30,
                    color: Colors.amber,
                  ),
                  Gap(4.w),
                  Text(
                    rate,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Gap(20.w),
                  const Icon(
                    FontAwesomeIcons.truckFast,
                    size: 24,
                    color: kprimaryColor,
                  ),
                  Gap(8.w),
                  Text(
                    "$delivery Minute",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
          Gap(8.w),
          Row(
            children: [
              const Text(
                r"$",
                style: TextStyle(
                  color: kprimaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                  color: kscondaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
