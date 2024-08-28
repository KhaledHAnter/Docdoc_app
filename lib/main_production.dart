import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/di/dependency_injection.dart';
import 'package:omar_ahmed_app/core/routing/app_router.dart';
import 'package:omar_ahmed_app/doc_app.dart';

void main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    // statusBarIconBrightness: Brightness.dark,
  ));

  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
