import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:omar_ahmed_app/core/helpers/assets.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';
import 'package:omar_ahmed_app/features/home/ui/views/widgets/red_notifier.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Omar!",
              style: Styles.bold18,
            ),
            Text(
              "How Are you Today?",
              style: Styles.regular11,
            ),
          ],
        ),
        const Spacer(),
        Container(
          padding: EdgeInsets.all(12.r),
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: ColorsManager.iconsGreyColor),
          child: Stack(
            children: [
              SvgPicture.asset(Assets.imagesNotification),
              const Positioned(
                right: 1,
                top: 1,
                child: RedNotifier(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
