import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/helpers/assets.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';

class DoctorBlueBanner extends StatelessWidget {
  const DoctorBlueBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 160.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: const DecorationImage(
                  image: AssetImage(Assets.imagesBannerBackgroun),
                  fit: BoxFit.fitWidth),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book and \nschedule with \nnearest doctor",
                  style: Styles.medium18,
                ),
                const Spacer(),
                Container(
                  margin: EdgeInsets.only(bottom: 8.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(48),
                      color: Colors.white),
                  child: Text(
                    "Find Nearby",
                    style: Styles.regular12
                        .copyWith(color: const Color(0xff247CFF)),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 8.w,
            bottom: 0,
            child: Image.asset(
              Assets.imagesMaleNurce,
              height: 195.h,
            ),
          )
        ],
      ),
    );
  }
}
