import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/helpers/extentions.dart';

import 'package:omar_ahmed_app/core/di/dependency_injection.dart';
import 'package:omar_ahmed_app/core/helpers/shared_prefernce_helper.dart';
import 'package:omar_ahmed_app/core/helpers/constants.dart';
import 'package:omar_ahmed_app/core/routing/app_router.dart';
import 'package:omar_ahmed_app/doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    // statusBarIconBrightness: Brightness.dark,
  ));

  await checkIfLoggedUser();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkIfLoggedUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefsKeys.userToken);

  if (!userToken.isNullOrEmpty()) {
    isLoggedUser = true;
  } else {
    isLoggedUser = false;
  }
}
