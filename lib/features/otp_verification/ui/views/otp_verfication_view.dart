import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/helpers/extentions.dart';
import 'package:omar_ahmed_app/core/helpers/show_snackbar.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/routing/routes.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';
import 'package:omar_ahmed_app/core/widgets/app_text_button.dart';
import 'package:omar_ahmed_app/features/otp_verification/ui/views/widgets/otp_square.dart';

class OtpVerficationView extends StatelessWidget {
  const OtpVerficationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'OTP Verification',
              style: Styles.bold24.copyWith(color: ColorsManager.mainBlue),
            ),
            verticalSpace(8),
            Text(
              'Add a PIN number to make your account more secure and easy to sign in.',
              style: Styles.regular14,
            ),
            verticalSpace(36),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                (index) => const OTPsquare(),
              ),
            ),
            verticalSpace(40),
            const Spacer(),
            AppTextButton(
              text: "Submit",
              textStyle: Styles.semiBold16,
              onPressed: () {
                showSnackbar(context, "OTP Verified");
                context.pushNamedAndRemoveUntil(Routes.loginView,
                    predicate: (Route<dynamic> route) => false);
              },
            ),
          ],
        ),
      )),
    );
  }
}
