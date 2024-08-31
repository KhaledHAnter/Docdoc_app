import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omar_ahmed_app/core/di/dependency_injection.dart';
import 'package:omar_ahmed_app/core/routing/routes.dart';
import 'package:omar_ahmed_app/features/fill_profile/ui/views/fill_profile_view.dart';
import 'package:omar_ahmed_app/features/forgot_password/logic/cubit/forgot_password_cubit.dart';
import 'package:omar_ahmed_app/features/forgot_password/ui/views/forgot_password_view.dart';
import 'package:omar_ahmed_app/features/home/ui/views/home_view.dart';
import 'package:omar_ahmed_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:omar_ahmed_app/features/login/ui/login_view.dart';
import 'package:omar_ahmed_app/features/onboarding/ui/onboarding_view.dart';
import 'package:omar_ahmed_app/features/otp_verification/ui/views/otp_verfication_view.dart';
import 'package:omar_ahmed_app/features/signup/logic/signup_cubit/sign_up_cubit.dart';
import 'package:omar_ahmed_app/features/signup/ui/views/signup_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // this arguments to be passed in any screen like this (arguments: arguments as ClassName)
    final arrguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginView(),
          ),
        );
      case Routes.signupView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupView(),
          ),
        );
      case Routes.forgotPasswordView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ForgotPasswordCubit(),
            child: const ForgotPasswordView(),
          ),
        );
      case Routes.fillProfileView:
        return MaterialPageRoute(
          builder: (_) => const FillProfileView(),
        );
      case Routes.otpVerificationView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => ForgotPasswordCubit(),
            child: const OtpVerficationView(),
          ),
        );
      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No route defined for ${settings.name}"),
                  ),
                ));
    }
  }
}
