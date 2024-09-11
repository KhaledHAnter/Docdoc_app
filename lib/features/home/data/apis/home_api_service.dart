import 'package:dio/dio.dart';
import 'package:omar_ahmed_app/core/networking/api_constants.dart';
import 'package:omar_ahmed_app/features/home/data/models/speceialization_response_model.dart';
import 'package:retrofit/retrofit.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(ApiConstants.specialityEndpoint)
  Future<SpecializationsResponseModel> getSpecializations();
}
