import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/helpers/constants.dart';
import 'package:omar_ahmed_app/core/helpers/extentions.dart';
import 'package:omar_ahmed_app/core/helpers/local_auth_utils.dart';
import 'package:omar_ahmed_app/core/routing/routes.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';
import 'package:omar_ahmed_app/core/widgets/app_button.dart';
import 'package:omar_ahmed_app/features/onboarding/ui/widgets/doc_logo_and_name.dart';
import 'package:omar_ahmed_app/features/onboarding/ui/widgets/doctor_image_and_text.dart';
import 'package:omar_ahmed_app/main_development.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late final LocalAuthUtils auth;
  bool _canCheckBiometrics = false;

  @override
  void initState() {
    super.initState();
    auth = LocalAuthUtils();

    _checkBiometrics();
  }

  Future<void> _checkBiometrics() async {
    bool canCheck = await auth.canCheckBiometrics();
    await checkIfLoggedUser();
    if (isLoggedUser) {
      setState(() {
        _canCheckBiometrics = canCheck;
      });
    } else {
      setState(() {
        _canCheckBiometrics = false;
      });
    }
  }

  Future<void> _authenticate() async {
    if (isLoggedUser) {
      bool authenticated = await auth.authenticate();
      navigateOptions(authenticated);
    } else {
      context.pushReplacementNamed(Routes.loginView);
    }
  }

  void navigateOptions(bool authenticated) {
    if (authenticated) {
      context.pushNamedAndRemoveUntil(Routes.homeView,
          predicate: (context) => false);
    } else {
      context.pushReplacementNamed(Routes.loginView);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: <Widget>[
                const DocLogoAndName(),
                SizedBox(height: 30.h),
                const DoctorImageAndText(),
                SizedBox(height: 18.h),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.w),
                      child: Text(
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        textAlign: TextAlign.center,
                        style: Styles.regular13,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.w),
                      child: AppButton(
                        title: isLoggedUser
                            ? Platform.isIOS
                                ? 'Login with Face ID'
                                : "login with FingerPrint"
                            : 'Get Started',
                        onTap: () {
                          _authenticate();
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
