import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:omar_ahmed_app/core/networking/api_error_handler.dart';
import 'package:omar_ahmed_app/features/home/data/models/speceialization_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // specialization
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(
          SpecializationsResponseModel specializationsResponseModel) =
      SpecializationSuccess;
  const factory HomeState.specializationFailure(ErrorHandler errorHandler) =
      SpecializationError;
}
