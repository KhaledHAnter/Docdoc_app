import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';
import 'package:omar_ahmed_app/features/home/data/recommended_doctor_model.dart';

class RecommendedDoctorsListView extends StatelessWidget {
  const RecommendedDoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 24.h),
            child: Row(
              children: <Widget>[
                Image.asset(recommendedDoctorList[index.isEven ? 0 : 1].image),
                horizontalSpace(16),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      recommendedDoctorList[index.isEven ? 0 : 1].name,
                      style: Styles.bold16,
                    ),
                    verticalSpace(4),
                    Text(
                      "${recommendedDoctorList[index.isEven ? 0 : 1].speciality}  |  ${recommendedDoctorList[index.isEven ? 0 : 1].address}",
                      style: Styles.medium13,
                    ),
                    verticalSpace(6),
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.star,
                          color: Color(0xffFFD600),
                        ),
                        horizontalSpace(3),
                        Text(
                            "${recommendedDoctorList[index.isEven ? 0 : 1].rating} (${recommendedDoctorList[index.isEven ? 0 : 1].count} reviews)",
                            style: Styles.medium13)
                      ],
                    )
                  ],
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}
