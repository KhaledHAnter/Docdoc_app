import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/core/helpers/assets.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/theming/styles.dart';
import 'package:omar_ahmed_app/features/home/data/models/speceialization_response_model.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctor;
  const DoctorsListViewItem({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24.h),
      child: Row(
        children: <Widget>[
          Image.asset(Assets.imagesDoctor1),
          horizontalSpace(16),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                doctor!.name ?? 'Dr. XXXX XXXXX',
                style: Styles.bold16,
              ),
              verticalSpace(4),
              Text(
                "${doctor!.price}  |  ${doctor!.degree}",
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
                  Text("4.8 (2,756 reviews)", style: Styles.medium13)
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
