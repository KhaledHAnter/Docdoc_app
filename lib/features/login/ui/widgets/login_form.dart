import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omar_ahmed_app/core/helpers/app_regex.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/helpers/validator_utils/validator_utils.dart';
import 'package:omar_ahmed_app/core/widgets/app_text_form_feild.dart';
import 'package:omar_ahmed_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:omar_ahmed_app/features/signup/ui/views/widgets/password_validations.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscure = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialChar = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: <Widget>[
          AppTextFormFeild(
            hintText: "Email",
            validator: ValidatorUtils.validateEmail,
            controller: context.read<LoginCubit>().emailController,
            keyboardType: TextInputType.emailAddress,
          ),
          verticalSpace(16),
          AppTextFormFeild(
            hintText: "Password",
            validator: ValidatorUtils.validatePassword,
            controller: context.read<LoginCubit>().passwordController,
            isObscureText: isObscure,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
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
