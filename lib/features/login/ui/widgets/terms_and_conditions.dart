import 'package:flutter/material.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: "By logging, you agree to our  ",
            style: Styles.regular12.copyWith(color: ColorsManager.darkBlue)),
        TextSpan(
            text: "Terms & Conditions  ",
            style: Styles.regular12
                .copyWith(color: Colors.black, fontWeight: FontWeight.w600)),
        TextSpan(
            text: "and ",
            style: Styles.regular12.copyWith(color: ColorsManager.darkBlue)),
        TextSpan(
            text: "PrivacyPolicy.",
            style: Styles.regular12
                .copyWith(color: Colors.black, fontWeight: FontWeight.w600)),
      ]),
    );
  }
}
