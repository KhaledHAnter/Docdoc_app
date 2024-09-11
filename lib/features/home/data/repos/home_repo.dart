import 'package:omar_ahmed_app/core/networking/api_error_handler.dart';
import 'package:omar_ahmed_app/core/networking/api_result.dart';
import 'package:omar_ahmed_app/features/home/data/apis/home_api_service.dart';
import 'package:omar_ahmed_app/features/home/data/models/speceialization_response_model.dart';

class HomeRepo {
  final HomeApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecializations() async {
    try {
      final response = await _apiService.getSpecializations();

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.error(ErrorHandler.handle(error));
    }
  }
}
