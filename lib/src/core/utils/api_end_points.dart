class ApiEndpoints {
  static const String baseUrl = 'https://mamunuiux.com/flutter_task/api';
  static const String baseImageUrl = 'https://mamunuiux.com/flutter_task/';

  static String refreshToken = "auth/refresh-token";

  static String home = "/";
  static String product = "/product";
  static String productDetails(String slug) => "/product/$slug";
  static String productById(String id) => "/product-by-category/$id";
}
