import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:omar_ahmed_app/core/helpers/assets.dart';

class ProfilePicturePick extends StatelessWidget {
  final void Function()? onTap;
  const ProfilePicturePick({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: CircleAvatar(
          radius: 60.h,
          backgroundColor: Colors.white,
          child: Stack(
            children: [
              Image.asset(Assets.imagesUser),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(7.h),
                  height: 30.h,
                  width: 30.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffF8F8F8),
                  ),
                  child: SvgPicture.asset(Assets.imagesPen),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
