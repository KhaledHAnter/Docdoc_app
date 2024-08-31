import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';
import 'package:omar_ahmed_app/core/widgets/app_text_button.dart';
import 'package:omar_ahmed_app/features/forgot_password/logic/cubit/forgot_password_cubit.dart';
import 'package:omar_ahmed_app/features/forgot_password/ui/views/widgets/forgot_password_form.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

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
              'Forgot Password',
              style: Styles.bold24.copyWith(color: ColorsManager.mainBlue),
            ),
            verticalSpace(8),
            Text(
              'At our app, we take the security of your information seriously.',
              style: Styles.regular14,
            ),
            verticalSpace(36),
            const ForgotPasswordForm(),
            verticalSpace(40),
            const Spacer(),
            AppTextButton(
              text: "Reset Passwor",
              textStyle: Styles.semiBold16,
              onPressed: () {
                if (context
                    .read<ForgotPasswordCubit>()
                    .formKey
                    .currentState!
                    .validate()) {
                  print("Done");
                }
              },
            ),
          ],
        ),
      )),
    );
  }
}
