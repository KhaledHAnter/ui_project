import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_project/Views/login_view.dart';
import 'package:ui_project/Views/on_boarding_view.dart';

void main() async {
  runApp(const UiProject());
  await ScreenUtil.ensureScreenSize();
}

class UiProject extends StatelessWidget {
  const UiProject({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        ScreenUtil.init(
          context,
          designSize: const Size(375, 812),
        );
        return child!;
      },
      debugShowCheckedModeBanner: false,
      title: 'UI Project',
      routes: {
        OnBoardingView.id: (context) => const OnBoardingView(),
        LoginView.id: (context) => const LoginView(),
      },
      initialRoute: OnBoardingView.id,
    );
  }
}
