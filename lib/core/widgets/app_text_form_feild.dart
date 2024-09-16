import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';

class AppTextFormFeild extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final bool isObscureText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? readOnly;
  final void Function()? onTap;

  const AppTextFormFeild({
    super.key,
    required this.hintText,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.hintStyle,
    this.inputTextStyle,
    this.isObscureText = false,
    this.suffixIcon,
    this.keyboardType,
    this.fillColor,
    this.controller,
    this.validator,
    this.readOnly,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: fillColor ?? ColorsManager.formGray,
        filled: true,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.lighterGray,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16)),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(16)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(16)),
        hintStyle: hintStyle ?? Styles.medium14,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      readOnly: readOnly ?? false,
      obscureText: isObscureText,
      onTap: onTap,
      textInputAction: TextInputAction.next,
      style: inputTextStyle ??
          Styles.medium14.copyWith(color: ColorsManager.darkBlue),
    );
  }
}
