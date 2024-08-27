import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:omar_ahmed_app/core/networking/api_error_handler.dart';
part 'api_result.freezed.dart';

@Freezed()
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.error(ErrorHandler errorHandler) = Failure<T>;
}
