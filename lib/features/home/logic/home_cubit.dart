import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omar_ahmed_app/features/home/data/repos/home_repo.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void emitHomeStates() async {
    emit(const HomeState.specializationLoading());
    final result = await _homeRepo.getSpecializations();
    result.when(
      success: (specializationsResponseModel) {
        emit(HomeState.specializationSuccess(specializationsResponseModel));
      },
      error: (errorHandler) {
        emit(HomeState.specializationFailure(errorHandler));
      },
    );
  }
}
