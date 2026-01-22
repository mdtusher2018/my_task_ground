class HomeEntity {
  final List<CategoryEntity> categories;
  final List<ProductEntity> newArrivals;

  const HomeEntity({
    required this.categories,
    required this.newArrivals,
  });
}



class CategoryEntity {
  final String title;
  final String icon; // icon name OR image URL

  const CategoryEntity({
    required this.title,
    required this.icon,
  });
}
class ProductEntity {
  final int id;
  final String name;
  final String image;
  final double rating;
  final double price;
  final double? oldPrice;
  final bool isFavorite;

  const ProductEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.rating,
    required this.price,
    this.oldPrice,
    this.isFavorite = false,
  });
}
