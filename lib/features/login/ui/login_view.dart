import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';
import 'package:omar_ahmed_app/core/widgets/app_text_button.dart';
import 'package:omar_ahmed_app/features/login/ui/widgets/auth_navigation_row.dart';
import 'package:omar_ahmed_app/features/login/ui/widgets/forgot_password_row.dart';
import 'package:omar_ahmed_app/features/login/ui/widgets/login_form.dart';
import 'package:omar_ahmed_app/features/login/ui/widgets/login_header.dart';
import 'package:omar_ahmed_app/features/login/ui/widgets/social_login_icons.dart';
import 'package:omar_ahmed_app/features/login/ui/widgets/terms_and_conditions.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey formKey = GlobalKey<FormState>();
  bool isObscure = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const LoginHeader(),
                verticalSpace(36),
                LoginForm(
                    formKey: formKey,
                    isObscure: isObscure,
                    onTap: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    }),
                verticalSpace(16),
                ForgotPasswordRow(
                  isChecked: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                verticalSpace(32),
                AppTextButton(
                  text: "Login",
                  onPressed: () {},
                  textStyle: Styles.semiBold16,
                ),
                verticalSpace(46),
                Row(
                  children: <Widget>[
                    const Expanded(child: Divider(indent: 0, endIndent: 10)),
                    Text(
                      "  Or sign in with  ",
                      style: Styles.regular12,
                    ),
                    const Expanded(child: Divider(indent: 10, endIndent: 0)),
                  ],
                ),
                verticalSpace(32),
                const SocialLoginIcons(),
                verticalSpace(32),
                const TermsAndConditions(),
                verticalSpace(24),
                AuthNavigationRow(
                    title: "Already have an account yet?",
                    buttonText: "Sign Up ",
                    onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
