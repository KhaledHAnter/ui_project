import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:ui_project/Widgets/food_details.dart';
import 'package:ui_project/constants.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  static const String id = 'Details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/Images/Ramen2.jpg",
                  ),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: kscondaryColor,
                          size: 30,
                        ),
                      ),
                    ),
                    const Text(
                      "Menu Details",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.favorite_border,
                        color: kscondaryColor,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Noddels",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 18,
                    ),
                  ),
                  Gap(8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        "Fried grill noddels with \n egg special",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 100.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: const Icon(Icons.remove),
                            ),
                            const Text(
                              "3",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Gap(16.h),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FoodDetails(
                        title: "Rating",
                        icon: FontAwesomeIcons.star,
                        subtitle: "4.8",
                        color: Colors.redAccent,
                      ),
                      FoodDetails(
                        title: "Calories",
                        icon: FontAwesomeIcons.fire,
                        subtitle: "124 Kcal",
                        color: Colors.redAccent,
                      ),
                      FoodDetails(
                        title: "Time",
                        icon: FontAwesomeIcons.clock,
                        subtitle: "15 min",
                        color: Colors.redAccent,
                      ),
                    ],
                  ),
                  Gap(16.h),
                  Text(
                    "Description",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Gap(16.h),
                  Text(
                    "Vegetable noodles is a healthy Chinese inspired dish where cooked noodles are stir fried with lots of vegetables. Further the dish is seasoned with a splash of sauces, vinegar and black Read More",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.grey.shade700,
                        ),
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: r"$ ",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "35.25",
                            style: TextStyle(
                              fontSize: 34,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // padding: const EdgeInsets.all(16),
                      width: 200.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: kprimaryColor,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.bagShopping,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text(
                            "Add To Cart",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
