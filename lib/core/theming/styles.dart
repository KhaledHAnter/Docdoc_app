import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/theming/font_weights_helper.dart';

class Styles {
  static TextStyle bold32 = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightsHelper.bold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle bold24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightsHelper.bold,
    color: Colors.black,
  );
  static TextStyle bold24Blue = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightsHelper.bold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle bold18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightsHelper.bold,
    color: ColorsManager.darkBlue,
  );
  static TextStyle semiBold16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightsHelper.semiBold,
    color: Colors.white,
  );
  static TextStyle medium15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeightsHelper.medium,
    color: ColorsManager.darkBlue,
  );
  static TextStyle regular14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightsHelper.regular,
    color: ColorsManager.gray,
  );
  static TextStyle medium14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightsHelper.medium,
    color: ColorsManager.lightGray,
  );
  static TextStyle semiBold14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightsHelper.semiBold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle regular13 = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightsHelper.regular,
    color: ColorsManager.gray,
  );
  static TextStyle regular12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightsHelper.regular,
    color: const Color(0xff9E9E9E),
  );
  static TextStyle regular11 = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeightsHelper.regular,
    color: const Color(0xff616161),
  );
}
