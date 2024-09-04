import 'package:flutter/material.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';

class HomeSectionHeaders extends StatelessWidget {
  final String title;
  const HomeSectionHeaders({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          title,
          style: Styles.semiBold18,
        ),
        const Spacer(),
        Text(
          "see all",
          style: Styles.regular12.copyWith(color: ColorsManager.mainBlue),
        )
      ],
    );
  }
}
