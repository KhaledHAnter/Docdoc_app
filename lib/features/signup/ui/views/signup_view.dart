import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/helpers/extentions.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';
import 'package:omar_ahmed_app/core/widgets/app_text_button.dart';
import 'package:omar_ahmed_app/features/login/ui/widgets/auth_navigation_row.dart';
import 'package:omar_ahmed_app/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:omar_ahmed_app/features/signup/logic/signup_cubit/sign_up_cubit.dart';
import 'package:omar_ahmed_app/features/signup/ui/views/widgets/sign_up_bloc_listener.dart';
import 'package:omar_ahmed_app/features/signup/ui/views/widgets/signup_form.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: Styles.bold24.copyWith(color: ColorsManager.mainBlue),
                ),
                verticalSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: Styles.regular14,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(40),
                    AppTextButton(
                      text: "Create Account",
                      textStyle: Styles.semiBold16,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditions(),
                    verticalSpace(30),
                    AuthNavigationRow(
                      title: "Already have an account? ",
                      buttonText: "Login",
                      onPressed: () {
                        context.pop();
                      },
                    ),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
