import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/features/home/data/models/speceialization_response_model.dart';
import 'package:omar_ahmed_app/features/home/ui/views/widgets/doctor_speciality_list_view_item.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationsData> specializationsDataList;
  const DoctorSpecialityListView(
      {super.key, required this.specializationsDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationsDataList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: DoctorSpecialityListViewItem(
              specializationsData: specializationsDataList[index],
            ),
          );
        },
      ),
    );
  }
}
