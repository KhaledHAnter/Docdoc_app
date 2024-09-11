import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';
import 'package:omar_ahmed_app/features/home/data/models/doctor_speciality_model.dart';
import 'package:omar_ahmed_app/features/home/data/models/speceialization_response_model.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  final SpecializationsData specializationsData;

  const DoctorSpecialityListViewItem(
      {super.key, required this.specializationsData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Color(0xffF4F8FF),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            doctorSpecialityList[0].image,
            height: 24.h,
            width: 24.w,
          ),
        ),
        verticalSpace(12),
        Text(specializationsData.name ?? 'Specialization',
            style: Styles.regular12.copyWith(color: const Color(0xff151515))),
      ],
    );
  }
}
