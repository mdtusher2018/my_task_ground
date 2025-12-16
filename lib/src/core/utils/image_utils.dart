import 'package:scube_task/src/core/utils/api_end_points.dart';

String getFullImagePath(String imagePath) {
  if (imagePath.isEmpty) {
    return "https://www.themealdb.com/images/media/meals/wvpsxx1468256321.jpg";
  }
  if (imagePath.contains("public")) {
    imagePath = imagePath.replaceFirst("public", "");
  }

  if (imagePath.startsWith('http')) {
    return imagePath;
  }
  if (imagePath.startsWith('/')) {
    return '${ApiEndpoints.baseImageUrl}$imagePath';
  }
  return '${ApiEndpoints.baseImageUrl}/$imagePath';
}
