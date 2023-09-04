import 'package:model_factory/model_factory.dart';

class ApiCallResponse<T> {
  ApiCallResponse({
    required this.response,
    this.success,
    this.status,
  });

  T response;
  int? status;
  bool? success;

  factory ApiCallResponse.fromJson(
    Map<String, dynamic> json, {
    String responseField = 'data',
  }) {
    try {
      return ApiCallResponse(
        response: json.value<T>(responseField),
        status: json["status"],
        success: json["success"],
      );
    } on FieldParseException catch (e) {
      throw ModelParseException(
        innerException: e.innerException,
        key: e.key,
        className: 'BlogApprove',
      );
    }
  }
}
