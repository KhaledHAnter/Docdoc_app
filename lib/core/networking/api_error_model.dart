import 'package:json_annotation/json_annotation.dart';
import 'package:omar_ahmed_app/core/helpers/extentions.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  @JsonKey(name: 'data')
  Map<String, dynamic>? errors;

  ApiErrorModel({
    this.message,
    this.code,
    this.errors,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  /// returns a string with all error messages
  String getAllErrorMessages() {
    if (errors.isNullOrEmpty()) return message ?? 'Unknown error occurred';

    final errorMessages = errors!.entries.map((entriy) {
      final value = entriy.value;
      return "${value.join(', ')}";
    }).join('\n');

    return errorMessages;
  }
}
