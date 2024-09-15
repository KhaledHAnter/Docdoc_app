import 'package:flutter/material.dart';
import 'package:omar_ahmed_app/features/home/data/models/speceialization_response_model.dart';
import 'package:omar_ahmed_app/features/home/ui/views/widgets/doctors_list_view_item.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(
            // doctorsModel: doctorsList?[index],
            doctor: doctorsList![index],
          );
        },
      ),
    );
  }
}
