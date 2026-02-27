
class SigninResponse {
  final String status;
  final int statusCode;
  final String message;
  final String token;
  final List<dynamic> errors;

  SigninResponse({
    required this.status,
    required this.statusCode,
    required this.message,
    required this.token,
    required this.errors,
  });

  factory SigninResponse.fromJson(Map<String, dynamic> json) {
    return SigninResponse(
      status: json['status'] ?? '',
      statusCode: json['statusCode'] ?? 0,
      message: json['message'] ?? '',
      token: json['accessToken'] ?? '',
      errors: json['errors'] ?? [],
    );
  }
}
