import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  @JsonKey(name: 'data')
  dynamic errors;

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
    if (errors == null || errors!.isEmpty) {
      return message ?? 'Unknown error occurred';
    } else {
      final errorMessages = errors!.entries.map((entriy) {
        final value = entriy.value;
        return "${value.join(', ')}";
      }).join('\n');

      return errorMessages;
    }
  }
}
