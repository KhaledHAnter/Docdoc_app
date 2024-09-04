import 'package:omar_ahmed_app/core/helpers/assets.dart';

class DoctorSpecialityModel {
  final String title, image;

  DoctorSpecialityModel({required this.title, required this.image});
}

List<DoctorSpecialityModel> doctorSpecialityList = [
  DoctorSpecialityModel(
    title: "General",
    image: Assets.imagesGeneral,
  ),
  DoctorSpecialityModel(
    title: "Neurologic",
    image: Assets.imagesNeurologic,
  ),
  DoctorSpecialityModel(
    title: "Pediatric",
    image: Assets.imagesPediatric,
  ),
  DoctorSpecialityModel(
    title: "Radiology",
    image: Assets.imagesRadiology,
  ),
];
