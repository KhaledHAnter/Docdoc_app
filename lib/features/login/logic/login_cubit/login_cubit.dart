import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omar_ahmed_app/core/helpers/shared_prefernce_helper.dart';
import 'package:omar_ahmed_app/core/helpers/constants.dart';
import 'package:omar_ahmed_app/core/networking/dio_factory.dart';
import 'package:omar_ahmed_app/features/login/data/models/login_request_body.dart';
import 'package:omar_ahmed_app/features/login/data/repos/login_repo.dart';
import 'package:omar_ahmed_app/features/login/logic/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    response.when(
      success: (loginResponse) async {
        await saveUserToken(loginResponse.userData!.token ?? '');
        emit(LoginState.success(loginResponse));
      },
      error: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  saveUserToken(String token) async {
    // save user token to shared preferences
    await SharedPrefHelper.setSecuredString(SharedPrefsKeys.userToken, token);
    DioFactory.setTokenAfterLogin(token);
  }
}
