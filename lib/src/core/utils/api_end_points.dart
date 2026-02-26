class ApiEndpoints {
  static const String baseUrl = 'https://fakestoreapi.com/';

  static String refreshToken = "auth/refresh-token";
  static String profile = "users/1";

  static String product(int page) => "products?page=$page";

}
