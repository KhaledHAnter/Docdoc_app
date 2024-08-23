import 'package:flutter/material.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/widgets/app_text_form_feild.dart';

class LoginForm extends StatelessWidget {
  final void Function()? onTap;
  final GlobalKey formKey;
  final bool isObscure;
  const LoginForm(
      {super.key, this.onTap, required this.formKey, required this.isObscure});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          const AppTextFormFeild(hintText: "Email"),
          verticalSpace(16),
          AppTextFormFeild(
            hintText: "Password",
            isObscureText: isObscure,
            suffixIcon: GestureDetector(
              onTap: onTap,
              child: Icon(
                isObscure ? Icons.visibility : Icons.visibility_off,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
