import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';

class Styles {
  static TextStyle bold24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static TextStyle bold32 = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle regular13 = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.gray,
  );
  static TextStyle semiBold16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
