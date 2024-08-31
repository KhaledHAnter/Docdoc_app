import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omar_ahmed_app/core/helpers/validator_utils/validator_utils.dart';
import 'package:omar_ahmed_app/core/widgets/app_text_form_feild.dart';
import 'package:omar_ahmed_app/features/forgot_password/logic/cubit/forgot_password_cubit.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ForgotPasswordCubit>().formKey,
      child: AppTextFormFeild(
        hintText: 'Email or Phone Number',
        validator: ValidatorUtils.requiredField,
        controller: context.read<ForgotPasswordCubit>().emailOrPhone,
      ),
    );
  }
}
