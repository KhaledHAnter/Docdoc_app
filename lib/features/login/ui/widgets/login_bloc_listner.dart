import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:omar_ahmed_app/core/helpers/extentions.dart';
import 'package:omar_ahmed_app/core/networking/api_error_model.dart';
import 'package:omar_ahmed_app/core/routing/routes.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';
import 'package:omar_ahmed_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:omar_ahmed_app/features/login/logic/login_cubit/login_state.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginLoading ||
          current is LoginError ||
          current is LoginSuccess,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: LoadingAnimationWidget.bouncingBall(
                    color: ColorsManager.mainBlue, size: 100.w),
              ),
            );
          },
          loginSuccess: (loginResponse) {
            context.pop();
            context.pushNamedAndRemoveUntil(Routes.homeView,
                predicate: (context) => false);
          },
          LoginError: (apiErrorModel) {
            setupErrorState(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          size: 32,
          color: Colors.red,
        ),
        content: Text(
          apiErrorModel.getAllErrorMessages(),
          style: Styles.medium15,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: Styles.semiBold14,
            ),
          ),
        ],
      ),
    );
  }
}
