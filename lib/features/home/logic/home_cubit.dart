import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omar_ahmed_app/core/helpers/extentions.dart';
import 'package:omar_ahmed_app/core/networking/api_error_handler.dart';
import 'package:omar_ahmed_app/features/home/data/models/speceialization_response_model.dart';
import 'package:omar_ahmed_app/features/home/data/repos/home_repo.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData>? specializationList = [];

  void emitHomeStates() async {
    emit(const HomeState.specializationLoading());
    final result = await _homeRepo.getSpecializations();
    result.when(
      success: (specializationsResponseModel) {
        specializationList =
            specializationsResponseModel.specializationDataList ?? [];
        emitHomeDoctorStates(specializationId: specializationList!.first.id);
        emit(HomeState.specializationSuccess(specializationList));
      },
      error: (errorHandler) {
        emit(HomeState.specializationFailure(errorHandler));
      },
    );
  }

  void emitHomeDoctorStates({required int? specializationId}) async {
    List<Doctors>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);
    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsFailure(ErrorHandler.handle('No Data Found')));
    }
  }

  getDoctorsListBySpecializationId(specializationId) {
    return specializationList
        ?.firstWhere((specialization) => specialization.id == specializationId)
        .doctorsList;
  }
}
