import 'package:flutter/material.dart';
import 'package:omar_ahmed_app/features/home/data/models/speceialization_response_model.dart';
import 'package:omar_ahmed_app/features/home/ui/views/widgets/reocommeded_doctors_list_view_item.dart';

class RecommendedDoctorsListView extends StatelessWidget {
  final List<Doctors>? doctorsList;
  const RecommendedDoctorsListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length ?? 0,
        itemBuilder: (context, index) {
          return RecommendedDoctorsListViewItem(
            doctor: doctorsList![index],
          );
        },
      ),
    );
  }
}
