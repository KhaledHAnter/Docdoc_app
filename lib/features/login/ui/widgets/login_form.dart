import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/helpers/validator_utils/validator_utils.dart';
import 'package:omar_ahmed_app/core/widgets/app_text_form_feild.dart';
import 'package:omar_ahmed_app/features/login/logic/login_cubit/login_cubit.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscure = true;
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
