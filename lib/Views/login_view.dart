import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:ui_project/constants.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  static String id = 'Login';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Login Account',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Gap(6.h),
              Text(
                'Please login with registered account',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              Gap(32.h),
              Text(
                'Email or Phone Number',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Gap(8.h),
              TextField(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                showCursor: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: const Icon(
                    FontAwesomeIcons.envelope,
                    size: 25,
                  ),
                  prefixIconColor: Colors.grey,
                  contentPadding: const EdgeInsets.all(22),
                  fillColor: Colors.grey.withOpacity(.05),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Enter your email or phone number',
                  hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              Gap(32.h),
              Text(
                'Password',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Gap(8.h),
              TextField(
                obscureText: showPassword ? false : true,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                showCursor: false,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: const Icon(
                    FontAwesomeIcons.lock,
                    size: 25,
                  ),
                  prefixIconColor: Colors.grey,
                  suffixIcon: IconButton(
                      icon: showPassword
                          ? const Icon(FontAwesomeIcons.eyeSlash)
                          : const Icon(FontAwesomeIcons.eye),
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      }),
                  suffixIconColor: Colors.grey,
                  contentPadding: const EdgeInsets.all(22),
                  fillColor: Colors.grey.withOpacity(.05),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Create your password',
                  hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              Gap(8.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: kprimaryColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Gap(80.h),
              Container(
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: Center(
                  child: Text(
                    'Sign In',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Gap(16.h),
              Center(
                child: Text(
                  'Or using ather method',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.grey.withOpacity(.8)),
                ),
              ),
              Gap(22.h),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/Images/Google.png", width: 30.h),
                    Gap(4.w),
                    Text('Sign In with Google',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Colors.black)),
                  ],
                ),
              ),
              Gap(10.h),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/Images/Facebook.png", width: 30.h),
                    Gap(4.w),
                    Text('Sign In with Facebook',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Colors.black)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
