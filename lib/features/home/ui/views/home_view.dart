import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/features/home/ui/views/doctor_speciality_header.dart';
import 'package:omar_ahmed_app/features/home/ui/views/widgets/doctor_blue_banner.dart';
import 'package:omar_ahmed_app/features/home/ui/views/widgets/doctor_speciality_list_view.dart';
import 'package:omar_ahmed_app/features/home/ui/views/widgets/home_top_bar.dart';
import 'package:omar_ahmed_app/features/home/ui/views/widgets/recommended_doctors_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 28.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorBlueBanner(),
              verticalSpace(24),
              const HomeSectionHeaders(
                title: "Doctor Speciality",
              ),
              verticalSpace(16),
              const DoctorSpecialityListView(),
              verticalSpace(24),
              const HomeSectionHeaders(
                title: "Recommendation Doctor",
              ),
              verticalSpace(16),
              const RecommendedDoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
