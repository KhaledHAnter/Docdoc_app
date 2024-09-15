import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omar_ahmed_app/core/helpers/shared_prefernce_helper.dart';
import 'package:omar_ahmed_app/core/helpers/constants.dart';
import 'package:omar_ahmed_app/core/networking/dio_factory.dart';
import 'package:omar_ahmed_app/features/signup/data/repos/signup_repo.dart';
import 'package:omar_ahmed_app/features/signup/logic/signup_cubit/sign_up_state.dart';

import '../../data/models/sign_up_request_body.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  void emitSignupStates() async {
    emit(const SignupState.signupLoading());
    final response = await _signupRepo.signup(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(success: (signupResponse) async {
      await saveUserToken(signupResponse.userData!.token ?? '');
      emit(SignupState.signupSuccess(signupResponse));
    }, error: (error) {
      emit(SignupState.signupError(error: error.apiErrorModel.message ?? ''));
    });
  }

  saveUserToken(String token) async {
    // save user token to shared preferences
    await SharedPrefHelper.setSecuredString(SharedPrefsKeys.userToken, token);
    DioFactory.setTokenAfterLogin(token);
  }
}
