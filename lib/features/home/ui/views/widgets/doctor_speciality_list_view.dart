import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omar_ahmed_app/features/home/data/models/speceialization_response_model.dart';
import 'package:omar_ahmed_app/features/home/ui/views/widgets/doctor_speciality_list_view_item.dart';

import '../../../logic/home_cubit.dart';

class DoctorSpecialityListView extends StatefulWidget {
  final List<SpecializationsData> specializationsDataList;
  const DoctorSpecialityListView(
      {super.key, required this.specializationsDataList});

  @override
  State<DoctorSpecialityListView> createState() =>
      _DoctorSpecialityListViewState();
}

class _DoctorSpecialityListViewState extends State<DoctorSpecialityListView> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationsDataList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
                context.read<HomeCubit>().emitHomeDoctorStates(
                      specializationId:
                          widget.specializationsDataList[index].id,
                    );
              },
              child: DoctorSpecialityListViewItem(
                specializationsData: widget.specializationsDataList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
