import 'package:flutter/material.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';

class ForgotPasswordRow extends StatelessWidget {
  final void Function(bool?)? onChanged;
  final bool isChecked;
  const ForgotPasswordRow({super.key, this.onChanged, required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
          activeColor: ColorsManager.mainBlue,
          side: const BorderSide(color: Color(0xffA9B2B9), width: 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          value: isChecked,
          onChanged: onChanged,
        ),
        horizontalSpace(2),
        Text(
          "Remember me",
          style: Styles.regular12,
        ),
        const Spacer(),
        Text(
          "Forgot Password?",
          style: Styles.regular13.copyWith(color: ColorsManager.mainBlue),
        )
      ],
    );
  }
}
