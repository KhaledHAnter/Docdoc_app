import 'package:flutter/material.dart';
import 'package:omar_ahmed_app/core/helpers/extentions.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/routing/routes.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';
import 'package:omar_ahmed_app/features/forgot_password/ui/views/forgot_password_view.dart';

class ForgotPasswordRow extends StatefulWidget {
  const ForgotPasswordRow({
    super.key,
  });

  @override
  State<ForgotPasswordRow> createState() => _ForgotPasswordRowState();
}

class _ForgotPasswordRowState extends State<ForgotPasswordRow> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: SizedBox(
            child: Row(
              children: [
                Checkbox(
                  activeColor: ColorsManager.mainBlue,
                  side: const BorderSide(color: Color(0xffA9B2B9), width: 2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                horizontalSpace(2),
                Text(
                  "Remember me",
                  style: Styles.regular12,
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => context.pushNamed(Routes.forgotPasswordView),
          child: Text(
            "Forgot Password?",
            style: Styles.regular13.copyWith(color: ColorsManager.mainBlue),
          ),
        )
      ],
    );
  }
}
