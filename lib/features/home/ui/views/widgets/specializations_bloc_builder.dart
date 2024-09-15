import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:omar_ahmed_app/core/helpers/spacing.dart';
import 'package:omar_ahmed_app/core/theming/colors.dart';
import 'package:omar_ahmed_app/features/home/logic/home_cubit.dart';
import 'package:omar_ahmed_app/features/home/logic/home_state.dart';
import 'package:omar_ahmed_app/features/home/ui/views/widgets/doctor_speciality_list_view.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () => setupLoading(),
          specializationSuccess: (specializationDataList) {
            var specializationsList = specializationDataList;
            return setupSuccess(specializationsList);
          },
          specializationFailure: (errorHandler) => setupFailure(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupLoading() {
    return Expanded(
      child: Center(
        child: LoadingAnimationWidget.dotsTriangle(
            color: ColorsManager.mainBlue, size: 100.h),
      ),
    );
  }

  Widget setupSuccess(specializationsList) {
    return Column(
      children: <Widget>[
        DoctorSpecialityListView(
          specializationsDataList: specializationsList ?? [],
        ),
        verticalSpace(24),
        // const HomeSectionHeaders(
        //   title: "Recommendation Doctor",
        // ),
        // verticalSpace(16),
        // RecommendedDoctorsListView(
        //   doctorsList: specializationsList?[0].doctorsList ?? [],
        // ),
      ],
    );
  }

  Widget setupFailure() {
    return const SizedBox.shrink();
  }
}
