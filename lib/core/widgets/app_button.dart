import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.title, this.onTap});

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(14.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: ColorsManager.mainBlue,
        ),
        child: Center(
          child: Text(
            title,
            style: Styles.semiBold16,
          ),
        ),
      ),
    );
  }
}
