import 'package:freezed_annotation/freezed_annotation.dart';
part 'signin_response.freezed.dart';
part 'signin_response.g.dart';

@freezed
abstract class SigninResponse with _$SigninResponse {
  const factory SigninResponse({
    required String status,
    required int statusCode,
    required String message,
    required DataModel data,
    required List<dynamic> errors,
  }) = _SigninResponse;

  factory SigninResponse.fromJson(Map<String, dynamic> json) =>
      _$SigninResponseFromJson(json);
}

@freezed
abstract class DataModel with _$DataModel {
  const factory DataModel({
    required String? type,
    required UserModel user,
    required String accessToken,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({required String fullName, required String email}) =
      _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
