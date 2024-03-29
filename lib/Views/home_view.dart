import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:ui_project/Views/details_view.dart';
import 'package:ui_project/Widgets/food_list_item.dart';
import 'package:ui_project/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static String id = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, right: 16, left: 16, bottom: 8),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kscondaryColor,
                  ),
                  child: const Icon(
                    FontAwesomeIcons.bars,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const Column(
                  children: <Widget>[
                    Text(
                      'Location',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.locationDot,
                          color: kprimaryColor,
                        ),
                        Text(
                          'San Diago, CA',
                          style: TextStyle(
                              color: kprimaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kscondaryColor,
                  ),
                  child: const Icon(
                    FontAwesomeIcons.bell,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
            Gap(32.h),
            Container(
              padding: EdgeInsets.only(top: 22.h, left: 22.h),
              height: 200.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                    image: AssetImage("assets/Images/home cover.jpg"),
                    fit: BoxFit.fill),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Hei, FoodCorner",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Gap(16.h),
                  const Padding(
                    padding: EdgeInsets.only(right: 64),
                    child: Text(
                      "Today we are having acrazy discount, by only buying 2 different products you will get 40% discount",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 60.h,
                        width: 100.h,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(16)),
                          color: kscondaryColor,
                        ),
                        child: const Center(
                          child: Text(
                            "40%",
                            style: TextStyle(
                              color: kprimaryColor,
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Gap(16.h),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Of The Week',
                  style: TextStyle(
                    color: kscondaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    color: kprimaryColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Gap(16.h),
            Column(
              children: List.generate(
                demo_Data.length,
                (index) => GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, DetailsView.id);
                  },
                  child: FoodListItem(
                    image: demo_Data[index].image,
                    title: demo_Data[index].title,
                    rate: demo_Data[index].rate,
                    delivery: demo_Data[index].delivery,
                    price: demo_Data[index].price,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodItem {
  final String image, title, rate, delivery, price;

  FoodItem({
    required this.image,
    required this.title,
    required this.rate,
    required this.delivery,
    required this.price,
  });
}

final List<FoodItem> demo_Data = [
  FoodItem(
    image: 'assets/Images/Dish1.png',
    title: 'Premiem Vegtables \nSalad',
    rate: '4.6',
    delivery: '12',
    price: '6.17',
  ),
  FoodItem(
    image: 'assets/Images/Dish2.png',
    title: 'Grilled meat with \nkepunari sauce',
    rate: '4.3',
    delivery: '15',
    price: '12.05',
  ),
  FoodItem(
    image: 'assets/Images/Dish3.png',
    title: 'Fresh Prawns Fried \n with extra onion',
    rate: '4.4',
    delivery: '11',
    price: '8.33',
  ),
  FoodItem(
    image: 'assets/Images/Dish4.png',
    title: 'Toast with bacon \n and cheese',
    rate: '4.0',
    delivery: '13',
    price: '21.00',
  ),
];
