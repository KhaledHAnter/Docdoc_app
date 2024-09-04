import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';
import 'package:omar_ahmed_app/features/home/data/doctor_speciality_model.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        doctorSpecialityList.length,
        (index) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Color(0xffF4F8FF),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  doctorSpecialityList[index].image,
                  height: 24.h,
                  width: 24.w,
                ),
              ),
              verticalSpace(12),
              Text(doctorSpecialityList[index].title,
                  style: Styles.regular12
                      .copyWith(color: const Color(0xff151515))),
            ],
          );
        },
      ),
    );
  }
}
