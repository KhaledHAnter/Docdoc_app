import 'package:flutter/material.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';

class AuthNavigationRow extends StatelessWidget {
  final String title, buttonText;
  final void Function()? onPressed;
  const AuthNavigationRow(
      {super.key,
      required this.title,
      required this.buttonText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: Styles.regular12.copyWith(color: ColorsManager.darkBlue),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: Styles.regular12.copyWith(
                color: ColorsManager.mainBlue, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
