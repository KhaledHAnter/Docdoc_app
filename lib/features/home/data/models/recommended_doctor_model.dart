import 'package:omar_ahmed_app/core/helpers/assets.dart';

class RecommendedDoctorModel {
  final String name, image, speciality, address;
  final double rating;
  final int count;

  RecommendedDoctorModel(
      {required this.name,
      required this.image,
      required this.speciality,
      required this.address,
      required this.rating,
      required this.count});
}

List<RecommendedDoctorModel> recommendedDoctorList = [
  RecommendedDoctorModel(
      name: "Dr. Randy Wigham",
      image: Assets.imagesDoctor1,
      speciality: "General",
      address: "RSUD Gatot Subroto",
      rating: 4.8,
      count: 4279),
  RecommendedDoctorModel(
      name: "Dr. Jack Sulivan",
      image: Assets.imagesDoctor2,
      speciality: "Neurologic",
      address: "RSUD Gatot Subroto",
      rating: 4.7,
      count: 2551),
];
