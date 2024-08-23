import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/helpers/extentions.dart';
import 'package:omar_ahmed_app/core/routing/routes.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';
import 'package:omar_ahmed_app/core/widgets/app_button.dart';
import 'package:omar_ahmed_app/features/onboarding/ui/widgets/doc_logo_and_name.dart';
import 'package:omar_ahmed_app/features/onboarding/ui/widgets/doctor_image_and_text.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

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
                        title: 'Get Started',
                        onTap: () =>
                            context.pushReplacementNamed(Routes.loginView),
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
