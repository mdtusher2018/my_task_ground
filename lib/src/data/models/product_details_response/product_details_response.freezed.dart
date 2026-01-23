// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDetailsResponse {

 Product? get product; List<GalleryItem>? get gellery; int? get totalReview;
/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailsResponseCopyWith<ProductDetailsResponse> get copyWith => _$ProductDetailsResponseCopyWithImpl<ProductDetailsResponse>(this as ProductDetailsResponse, _$identity);

  /// Serializes this ProductDetailsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailsResponse&&(identical(other.product, product) || other.product == product)&&const DeepCollectionEquality().equals(other.gellery, gellery)&&(identical(other.totalReview, totalReview) || other.totalReview == totalReview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,const DeepCollectionEquality().hash(gellery),totalReview);

@override
String toString() {
  return 'ProductDetailsResponse(product: $product, gellery: $gellery, totalReview: $totalReview)';
}


}

/// @nodoc
abstract mixin class $ProductDetailsResponseCopyWith<$Res>  {
  factory $ProductDetailsResponseCopyWith(ProductDetailsResponse value, $Res Function(ProductDetailsResponse) _then) = _$ProductDetailsResponseCopyWithImpl;
@useResult
$Res call({
 Product? product, List<GalleryItem>? gellery, int? totalReview
});


$ProductCopyWith<$Res>? get product;

}
/// @nodoc
class _$ProductDetailsResponseCopyWithImpl<$Res>
    implements $ProductDetailsResponseCopyWith<$Res> {
  _$ProductDetailsResponseCopyWithImpl(this._self, this._then);

  final ProductDetailsResponse _self;
  final $Res Function(ProductDetailsResponse) _then;

/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = freezed,Object? gellery = freezed,Object? totalReview = freezed,}) {
  return _then(_self.copyWith(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,gellery: freezed == gellery ? _self.gellery : gellery // ignore: cast_nullable_to_non_nullable
as List<GalleryItem>?,totalReview: freezed == totalReview ? _self.totalReview : totalReview // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductDetailsResponse].
extension ProductDetailsResponsePatterns on ProductDetailsResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductDetailsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductDetailsResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductDetailsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProductDetailsResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductDetailsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProductDetailsResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Product? product,  List<GalleryItem>? gellery,  int? totalReview)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetailsResponse() when $default != null:
return $default(_that.product,_that.gellery,_that.totalReview);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Product? product,  List<GalleryItem>? gellery,  int? totalReview)  $default,) {final _that = this;
switch (_that) {
case _ProductDetailsResponse():
return $default(_that.product,_that.gellery,_that.totalReview);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Product? product,  List<GalleryItem>? gellery,  int? totalReview)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetailsResponse() when $default != null:
return $default(_that.product,_that.gellery,_that.totalReview);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDetailsResponse implements ProductDetailsResponse {
  const _ProductDetailsResponse({this.product, final  List<GalleryItem>? gellery, this.totalReview}): _gellery = gellery;
  factory _ProductDetailsResponse.fromJson(Map<String, dynamic> json) => _$ProductDetailsResponseFromJson(json);

@override final  Product? product;
 final  List<GalleryItem>? _gellery;
@override List<GalleryItem>? get gellery {
  final value = _gellery;
  if (value == null) return null;
  if (_gellery is EqualUnmodifiableListView) return _gellery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? totalReview;

/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDetailsResponseCopyWith<_ProductDetailsResponse> get copyWith => __$ProductDetailsResponseCopyWithImpl<_ProductDetailsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDetailsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailsResponse&&(identical(other.product, product) || other.product == product)&&const DeepCollectionEquality().equals(other._gellery, _gellery)&&(identical(other.totalReview, totalReview) || other.totalReview == totalReview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,const DeepCollectionEquality().hash(_gellery),totalReview);

@override
String toString() {
  return 'ProductDetailsResponse(product: $product, gellery: $gellery, totalReview: $totalReview)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailsResponseCopyWith<$Res> implements $ProductDetailsResponseCopyWith<$Res> {
  factory _$ProductDetailsResponseCopyWith(_ProductDetailsResponse value, $Res Function(_ProductDetailsResponse) _then) = __$ProductDetailsResponseCopyWithImpl;
@override @useResult
$Res call({
 Product? product, List<GalleryItem>? gellery, int? totalReview
});


@override $ProductCopyWith<$Res>? get product;

}
/// @nodoc
class __$ProductDetailsResponseCopyWithImpl<$Res>
    implements _$ProductDetailsResponseCopyWith<$Res> {
  __$ProductDetailsResponseCopyWithImpl(this._self, this._then);

  final _ProductDetailsResponse _self;
  final $Res Function(_ProductDetailsResponse) _then;

/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = freezed,Object? gellery = freezed,Object? totalReview = freezed,}) {
  return _then(_ProductDetailsResponse(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,gellery: freezed == gellery ? _self._gellery : gellery // ignore: cast_nullable_to_non_nullable
as List<GalleryItem>?,totalReview: freezed == totalReview ? _self.totalReview : totalReview // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc
mixin _$Product {

 int? get id; String? get name; String? get slug; String? get thumb_image; String? get short_description; String? get long_description; num? get price; num? get offer_price; dynamic get averageRating; Category? get category; List<dynamic>? get avg_review;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.thumb_image, thumb_image) || other.thumb_image == thumb_image)&&(identical(other.short_description, short_description) || other.short_description == short_description)&&(identical(other.long_description, long_description) || other.long_description == long_description)&&(identical(other.price, price) || other.price == price)&&(identical(other.offer_price, offer_price) || other.offer_price == offer_price)&&const DeepCollectionEquality().equals(other.averageRating, averageRating)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other.avg_review, avg_review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,thumb_image,short_description,long_description,price,offer_price,const DeepCollectionEquality().hash(averageRating),category,const DeepCollectionEquality().hash(avg_review));

@override
String toString() {
  return 'Product(id: $id, name: $name, slug: $slug, thumb_image: $thumb_image, short_description: $short_description, long_description: $long_description, price: $price, offer_price: $offer_price, averageRating: $averageRating, category: $category, avg_review: $avg_review)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? slug, String? thumb_image, String? short_description, String? long_description, num? price, num? offer_price, dynamic averageRating, Category? category, List<dynamic>? avg_review
});


$CategoryCopyWith<$Res>? get category;

}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? thumb_image = freezed,Object? short_description = freezed,Object? long_description = freezed,Object? price = freezed,Object? offer_price = freezed,Object? averageRating = freezed,Object? category = freezed,Object? avg_review = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,thumb_image: freezed == thumb_image ? _self.thumb_image : thumb_image // ignore: cast_nullable_to_non_nullable
as String?,short_description: freezed == short_description ? _self.short_description : short_description // ignore: cast_nullable_to_non_nullable
as String?,long_description: freezed == long_description ? _self.long_description : long_description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,offer_price: freezed == offer_price ? _self.offer_price : offer_price // ignore: cast_nullable_to_non_nullable
as num?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as dynamic,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,avg_review: freezed == avg_review ? _self.avg_review : avg_review // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? slug,  String? thumb_image,  String? short_description,  String? long_description,  num? price,  num? offer_price,  dynamic averageRating,  Category? category,  List<dynamic>? avg_review)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.thumb_image,_that.short_description,_that.long_description,_that.price,_that.offer_price,_that.averageRating,_that.category,_that.avg_review);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? slug,  String? thumb_image,  String? short_description,  String? long_description,  num? price,  num? offer_price,  dynamic averageRating,  Category? category,  List<dynamic>? avg_review)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.name,_that.slug,_that.thumb_image,_that.short_description,_that.long_description,_that.price,_that.offer_price,_that.averageRating,_that.category,_that.avg_review);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? slug,  String? thumb_image,  String? short_description,  String? long_description,  num? price,  num? offer_price,  dynamic averageRating,  Category? category,  List<dynamic>? avg_review)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.thumb_image,_that.short_description,_that.long_description,_that.price,_that.offer_price,_that.averageRating,_that.category,_that.avg_review);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({this.id, this.name, this.slug, this.thumb_image, this.short_description, this.long_description, this.price, this.offer_price, this.averageRating, this.category, final  List<dynamic>? avg_review}): _avg_review = avg_review;
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? slug;
@override final  String? thumb_image;
@override final  String? short_description;
@override final  String? long_description;
@override final  num? price;
@override final  num? offer_price;
@override final  dynamic averageRating;
@override final  Category? category;
 final  List<dynamic>? _avg_review;
@override List<dynamic>? get avg_review {
  final value = _avg_review;
  if (value == null) return null;
  if (_avg_review is EqualUnmodifiableListView) return _avg_review;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.thumb_image, thumb_image) || other.thumb_image == thumb_image)&&(identical(other.short_description, short_description) || other.short_description == short_description)&&(identical(other.long_description, long_description) || other.long_description == long_description)&&(identical(other.price, price) || other.price == price)&&(identical(other.offer_price, offer_price) || other.offer_price == offer_price)&&const DeepCollectionEquality().equals(other.averageRating, averageRating)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._avg_review, _avg_review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,thumb_image,short_description,long_description,price,offer_price,const DeepCollectionEquality().hash(averageRating),category,const DeepCollectionEquality().hash(_avg_review));

@override
String toString() {
  return 'Product(id: $id, name: $name, slug: $slug, thumb_image: $thumb_image, short_description: $short_description, long_description: $long_description, price: $price, offer_price: $offer_price, averageRating: $averageRating, category: $category, avg_review: $avg_review)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? slug, String? thumb_image, String? short_description, String? long_description, num? price, num? offer_price, dynamic averageRating, Category? category, List<dynamic>? avg_review
});


@override $CategoryCopyWith<$Res>? get category;

}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? thumb_image = freezed,Object? short_description = freezed,Object? long_description = freezed,Object? price = freezed,Object? offer_price = freezed,Object? averageRating = freezed,Object? category = freezed,Object? avg_review = freezed,}) {
  return _then(_Product(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,thumb_image: freezed == thumb_image ? _self.thumb_image : thumb_image // ignore: cast_nullable_to_non_nullable
as String?,short_description: freezed == short_description ? _self.short_description : short_description // ignore: cast_nullable_to_non_nullable
as String?,long_description: freezed == long_description ? _self.long_description : long_description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,offer_price: freezed == offer_price ? _self.offer_price : offer_price // ignore: cast_nullable_to_non_nullable
as num?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as dynamic,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,avg_review: freezed == avg_review ? _self._avg_review : avg_review // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// @nodoc
mixin _$Category {

 String? get name;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'Category(name: $name)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 String? name
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name)  $default,) {final _that = this;
switch (_that) {
case _Category():
return $default(_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Category implements Category {
  const _Category({this.name});
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override final  String? name;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'Category(name: $name)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 String? name
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_Category(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GalleryItem {

 String? get image;
/// Create a copy of GalleryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GalleryItemCopyWith<GalleryItem> get copyWith => _$GalleryItemCopyWithImpl<GalleryItem>(this as GalleryItem, _$identity);

  /// Serializes this GalleryItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GalleryItem&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'GalleryItem(image: $image)';
}


}

/// @nodoc
abstract mixin class $GalleryItemCopyWith<$Res>  {
  factory $GalleryItemCopyWith(GalleryItem value, $Res Function(GalleryItem) _then) = _$GalleryItemCopyWithImpl;
@useResult
$Res call({
 String? image
});




}
/// @nodoc
class _$GalleryItemCopyWithImpl<$Res>
    implements $GalleryItemCopyWith<$Res> {
  _$GalleryItemCopyWithImpl(this._self, this._then);

  final GalleryItem _self;
  final $Res Function(GalleryItem) _then;

/// Create a copy of GalleryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = freezed,}) {
  return _then(_self.copyWith(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GalleryItem].
extension GalleryItemPatterns on GalleryItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GalleryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GalleryItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GalleryItem value)  $default,){
final _that = this;
switch (_that) {
case _GalleryItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GalleryItem value)?  $default,){
final _that = this;
switch (_that) {
case _GalleryItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GalleryItem() when $default != null:
return $default(_that.image);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? image)  $default,) {final _that = this;
switch (_that) {
case _GalleryItem():
return $default(_that.image);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? image)?  $default,) {final _that = this;
switch (_that) {
case _GalleryItem() when $default != null:
return $default(_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GalleryItem implements GalleryItem {
  const _GalleryItem({this.image});
  factory _GalleryItem.fromJson(Map<String, dynamic> json) => _$GalleryItemFromJson(json);

@override final  String? image;

/// Create a copy of GalleryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GalleryItemCopyWith<_GalleryItem> get copyWith => __$GalleryItemCopyWithImpl<_GalleryItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GalleryItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GalleryItem&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'GalleryItem(image: $image)';
}


}

/// @nodoc
abstract mixin class _$GalleryItemCopyWith<$Res> implements $GalleryItemCopyWith<$Res> {
  factory _$GalleryItemCopyWith(_GalleryItem value, $Res Function(_GalleryItem) _then) = __$GalleryItemCopyWithImpl;
@override @useResult
$Res call({
 String? image
});




}
/// @nodoc
class __$GalleryItemCopyWithImpl<$Res>
    implements _$GalleryItemCopyWith<$Res> {
  __$GalleryItemCopyWithImpl(this._self, this._then);

  final _GalleryItem _self;
  final $Res Function(_GalleryItem) _then;

/// Create a copy of GalleryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = freezed,}) {
  return _then(_GalleryItem(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
