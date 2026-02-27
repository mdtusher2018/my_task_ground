/// ==========================================================
/// API ENDPOINTS
/// ==========================================================
/// 
/// Centralized storage of all API endpoints for the app.
/// Use this class to avoid hardcoding URLs in multiple places.
class ApiEndpoints {
  ApiEndpoints._(); // Prevent instantiation

  /// Base URL for all API calls
  static const String baseUrl = 'https://fakestoreapi.com/';

  /// Auth endpoints
  static const String refreshToken = "auth/refresh-token";
  static const String signin = "login";

  /// User endpoints
  static const String profile = "users/1";

  /// Product endpoints
  static String product(int page) => "products?page=$page";
}