import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:omar_ahmed_app/core/networking/api_service.dart';
import 'package:omar_ahmed_app/core/networking/dio_factory.dart';
import 'package:omar_ahmed_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:omar_ahmed_app/features/signup/data/repos/signup_repo.dart';
import 'package:omar_ahmed_app/features/signup/logic/signup_cubit/sign_up_cubit.dart';

import '../../features/login/data/repos/login_repo.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
