import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:ui_project/Widgets/dot_indicator.dart';
import 'package:ui_project/Widgets/on_boarding_content.dart';
import 'package:ui_project/constants.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  static String id = 'OnBoarding';

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 11,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemCount: demo_Data.length,
                itemBuilder: (context, index) {
                  return OnboardingContent(
                    imagePath: demo_Data[index].image,
                    title: demo_Data[index].title,
                    subtitle: demo_Data[index].desc,
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    demo_Data.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndicator(
                        isActive: index == _pageIndex,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 60.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kprimaryColor,
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    child: Center(
                      child: Text(
                        'Create Account',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Gap(16.h),
                  Text(
                    'Already have an account',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: kprimaryColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Onboard {
  final String image, title, desc;

  Onboard({
    required this.image,
    required this.title,
    required this.desc,
  });
}

final List<Onboard> demo_Data = [
  Onboard(
    image: 'assets/Images/Onboarding.png',
    title: 'The Experience Of Buying \nFood Quickly',
    desc:
        'Urne pret, suspendisse ullamcorper ac elit diomfacisis cursus vestibulum.',
  ),
  Onboard(
    image: 'assets/Images/Onboarding-1.png',
    title: "Foodie's Courier Send \n With Love",
    desc:
        'Urne pret, suspendisse ullamcorper ac elit diomfacisis cursus vestibulum.',
  ),
  Onboard(
    image: 'assets/Images/Frame 1.png',
    title: 'Find And Get Your Best Food',
    desc:
        'Urne pret, suspendisse ullamcorper ac elit diomfacisis cursus vestibulum.',
  ),
];
