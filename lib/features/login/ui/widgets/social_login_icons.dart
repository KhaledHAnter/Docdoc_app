import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:omar_ahmed_app/core/helpers/assets.dart';

class SocialLoginIcons extends StatelessWidget {
  const SocialLoginIcons({super.key});

  static const List<String> socialIcons = [
    Assets.imagesGoogle,
    Assets.imagesFacebook,
    Assets.imagesApple,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        socialIcons.length,
        (index) {
          return Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffF5F5F5),
            ),
            child: SvgPicture.asset(socialIcons[index]),
          );
        },
      ),
    );
  }
}
