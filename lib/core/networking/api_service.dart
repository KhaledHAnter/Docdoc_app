import 'package:dio/dio.dart';
import 'package:omar_ahmed_app/core/networking/api_constants.dart';
import 'package:omar_ahmed_app/features/login/data/models/login_request_body.dart';
import 'package:omar_ahmed_app/features/login/data/models/login_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponseModel> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
