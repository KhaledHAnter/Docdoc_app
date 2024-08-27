import 'package:flutter/material.dart';
import 'package:omar_ahmed_app/core/di/dependency_injection.dart';
import 'package:omar_ahmed_app/core/routing/app_router.dart';
import 'package:omar_ahmed_app/doc_app.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
