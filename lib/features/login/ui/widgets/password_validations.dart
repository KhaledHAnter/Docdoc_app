import 'package:flutter/material.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialChar;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialChar,
      required this.hasNumber,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildValidationRow("At least 1 lowercase letter", hasLowerCase),
        verticalSpace(2),
        buildValidationRow("At least 1 uppercase letter", hasUpperCase),
        verticalSpace(2),
        buildValidationRow("At least 1 special character", hasSpecialChar),
        verticalSpace(2),
        buildValidationRow("At least 1 number", hasNumber),
        verticalSpace(2),
        buildValidationRow("At least 8 characters", hasMinLength),
        verticalSpace(2),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: <Widget>[
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.gray,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: Styles.medium14.copyWith(
            color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
          ),
        )
      ],
    );
  }
}
