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

 Product? get product; List<dynamic>? get gellery; String? get tags; int? get totalProductReviewQty; int? get totalReview; List<dynamic>? get productReviews; List<dynamic>? get specifications; RecaptchaSetting? get recaptchaSetting; List<RelatedProduct>? get relatedProducts; DefaultProfile? get defaultProfile; bool? get is_seller_product; Seller? get seller; int? get sellerTotalProducts; List<dynamic>? get this_seller_products; int? get sellerReviewQty; int? get sellerTotalReview;
/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDetailsResponseCopyWith<ProductDetailsResponse> get copyWith => _$ProductDetailsResponseCopyWithImpl<ProductDetailsResponse>(this as ProductDetailsResponse, _$identity);

  /// Serializes this ProductDetailsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDetailsResponse&&(identical(other.product, product) || other.product == product)&&const DeepCollectionEquality().equals(other.gellery, gellery)&&(identical(other.tags, tags) || other.tags == tags)&&(identical(other.totalProductReviewQty, totalProductReviewQty) || other.totalProductReviewQty == totalProductReviewQty)&&(identical(other.totalReview, totalReview) || other.totalReview == totalReview)&&const DeepCollectionEquality().equals(other.productReviews, productReviews)&&const DeepCollectionEquality().equals(other.specifications, specifications)&&(identical(other.recaptchaSetting, recaptchaSetting) || other.recaptchaSetting == recaptchaSetting)&&const DeepCollectionEquality().equals(other.relatedProducts, relatedProducts)&&(identical(other.defaultProfile, defaultProfile) || other.defaultProfile == defaultProfile)&&(identical(other.is_seller_product, is_seller_product) || other.is_seller_product == is_seller_product)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.sellerTotalProducts, sellerTotalProducts) || other.sellerTotalProducts == sellerTotalProducts)&&const DeepCollectionEquality().equals(other.this_seller_products, this_seller_products)&&(identical(other.sellerReviewQty, sellerReviewQty) || other.sellerReviewQty == sellerReviewQty)&&(identical(other.sellerTotalReview, sellerTotalReview) || other.sellerTotalReview == sellerTotalReview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,const DeepCollectionEquality().hash(gellery),tags,totalProductReviewQty,totalReview,const DeepCollectionEquality().hash(productReviews),const DeepCollectionEquality().hash(specifications),recaptchaSetting,const DeepCollectionEquality().hash(relatedProducts),defaultProfile,is_seller_product,seller,sellerTotalProducts,const DeepCollectionEquality().hash(this_seller_products),sellerReviewQty,sellerTotalReview);

@override
String toString() {
  return 'ProductDetailsResponse(product: $product, gellery: $gellery, tags: $tags, totalProductReviewQty: $totalProductReviewQty, totalReview: $totalReview, productReviews: $productReviews, specifications: $specifications, recaptchaSetting: $recaptchaSetting, relatedProducts: $relatedProducts, defaultProfile: $defaultProfile, is_seller_product: $is_seller_product, seller: $seller, sellerTotalProducts: $sellerTotalProducts, this_seller_products: $this_seller_products, sellerReviewQty: $sellerReviewQty, sellerTotalReview: $sellerTotalReview)';
}


}

/// @nodoc
abstract mixin class $ProductDetailsResponseCopyWith<$Res>  {
  factory $ProductDetailsResponseCopyWith(ProductDetailsResponse value, $Res Function(ProductDetailsResponse) _then) = _$ProductDetailsResponseCopyWithImpl;
@useResult
$Res call({
 Product? product, List<dynamic>? gellery, String? tags, int? totalProductReviewQty, int? totalReview, List<dynamic>? productReviews, List<dynamic>? specifications, RecaptchaSetting? recaptchaSetting, List<RelatedProduct>? relatedProducts, DefaultProfile? defaultProfile, bool? is_seller_product, Seller? seller, int? sellerTotalProducts, List<dynamic>? this_seller_products, int? sellerReviewQty, int? sellerTotalReview
});


$ProductCopyWith<$Res>? get product;$RecaptchaSettingCopyWith<$Res>? get recaptchaSetting;$DefaultProfileCopyWith<$Res>? get defaultProfile;$SellerCopyWith<$Res>? get seller;

}
/// @nodoc
class _$ProductDetailsResponseCopyWithImpl<$Res>
    implements $ProductDetailsResponseCopyWith<$Res> {
  _$ProductDetailsResponseCopyWithImpl(this._self, this._then);

  final ProductDetailsResponse _self;
  final $Res Function(ProductDetailsResponse) _then;

/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = freezed,Object? gellery = freezed,Object? tags = freezed,Object? totalProductReviewQty = freezed,Object? totalReview = freezed,Object? productReviews = freezed,Object? specifications = freezed,Object? recaptchaSetting = freezed,Object? relatedProducts = freezed,Object? defaultProfile = freezed,Object? is_seller_product = freezed,Object? seller = freezed,Object? sellerTotalProducts = freezed,Object? this_seller_products = freezed,Object? sellerReviewQty = freezed,Object? sellerTotalReview = freezed,}) {
  return _then(_self.copyWith(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,gellery: freezed == gellery ? _self.gellery : gellery // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as String?,totalProductReviewQty: freezed == totalProductReviewQty ? _self.totalProductReviewQty : totalProductReviewQty // ignore: cast_nullable_to_non_nullable
as int?,totalReview: freezed == totalReview ? _self.totalReview : totalReview // ignore: cast_nullable_to_non_nullable
as int?,productReviews: freezed == productReviews ? _self.productReviews : productReviews // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,specifications: freezed == specifications ? _self.specifications : specifications // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,recaptchaSetting: freezed == recaptchaSetting ? _self.recaptchaSetting : recaptchaSetting // ignore: cast_nullable_to_non_nullable
as RecaptchaSetting?,relatedProducts: freezed == relatedProducts ? _self.relatedProducts : relatedProducts // ignore: cast_nullable_to_non_nullable
as List<RelatedProduct>?,defaultProfile: freezed == defaultProfile ? _self.defaultProfile : defaultProfile // ignore: cast_nullable_to_non_nullable
as DefaultProfile?,is_seller_product: freezed == is_seller_product ? _self.is_seller_product : is_seller_product // ignore: cast_nullable_to_non_nullable
as bool?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as Seller?,sellerTotalProducts: freezed == sellerTotalProducts ? _self.sellerTotalProducts : sellerTotalProducts // ignore: cast_nullable_to_non_nullable
as int?,this_seller_products: freezed == this_seller_products ? _self.this_seller_products : this_seller_products // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,sellerReviewQty: freezed == sellerReviewQty ? _self.sellerReviewQty : sellerReviewQty // ignore: cast_nullable_to_non_nullable
as int?,sellerTotalReview: freezed == sellerTotalReview ? _self.sellerTotalReview : sellerTotalReview // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecaptchaSettingCopyWith<$Res>? get recaptchaSetting {
    if (_self.recaptchaSetting == null) {
    return null;
  }

  return $RecaptchaSettingCopyWith<$Res>(_self.recaptchaSetting!, (value) {
    return _then(_self.copyWith(recaptchaSetting: value));
  });
}/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DefaultProfileCopyWith<$Res>? get defaultProfile {
    if (_self.defaultProfile == null) {
    return null;
  }

  return $DefaultProfileCopyWith<$Res>(_self.defaultProfile!, (value) {
    return _then(_self.copyWith(defaultProfile: value));
  });
}/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $SellerCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Product? product,  List<dynamic>? gellery,  String? tags,  int? totalProductReviewQty,  int? totalReview,  List<dynamic>? productReviews,  List<dynamic>? specifications,  RecaptchaSetting? recaptchaSetting,  List<RelatedProduct>? relatedProducts,  DefaultProfile? defaultProfile,  bool? is_seller_product,  Seller? seller,  int? sellerTotalProducts,  List<dynamic>? this_seller_products,  int? sellerReviewQty,  int? sellerTotalReview)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductDetailsResponse() when $default != null:
return $default(_that.product,_that.gellery,_that.tags,_that.totalProductReviewQty,_that.totalReview,_that.productReviews,_that.specifications,_that.recaptchaSetting,_that.relatedProducts,_that.defaultProfile,_that.is_seller_product,_that.seller,_that.sellerTotalProducts,_that.this_seller_products,_that.sellerReviewQty,_that.sellerTotalReview);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Product? product,  List<dynamic>? gellery,  String? tags,  int? totalProductReviewQty,  int? totalReview,  List<dynamic>? productReviews,  List<dynamic>? specifications,  RecaptchaSetting? recaptchaSetting,  List<RelatedProduct>? relatedProducts,  DefaultProfile? defaultProfile,  bool? is_seller_product,  Seller? seller,  int? sellerTotalProducts,  List<dynamic>? this_seller_products,  int? sellerReviewQty,  int? sellerTotalReview)  $default,) {final _that = this;
switch (_that) {
case _ProductDetailsResponse():
return $default(_that.product,_that.gellery,_that.tags,_that.totalProductReviewQty,_that.totalReview,_that.productReviews,_that.specifications,_that.recaptchaSetting,_that.relatedProducts,_that.defaultProfile,_that.is_seller_product,_that.seller,_that.sellerTotalProducts,_that.this_seller_products,_that.sellerReviewQty,_that.sellerTotalReview);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Product? product,  List<dynamic>? gellery,  String? tags,  int? totalProductReviewQty,  int? totalReview,  List<dynamic>? productReviews,  List<dynamic>? specifications,  RecaptchaSetting? recaptchaSetting,  List<RelatedProduct>? relatedProducts,  DefaultProfile? defaultProfile,  bool? is_seller_product,  Seller? seller,  int? sellerTotalProducts,  List<dynamic>? this_seller_products,  int? sellerReviewQty,  int? sellerTotalReview)?  $default,) {final _that = this;
switch (_that) {
case _ProductDetailsResponse() when $default != null:
return $default(_that.product,_that.gellery,_that.tags,_that.totalProductReviewQty,_that.totalReview,_that.productReviews,_that.specifications,_that.recaptchaSetting,_that.relatedProducts,_that.defaultProfile,_that.is_seller_product,_that.seller,_that.sellerTotalProducts,_that.this_seller_products,_that.sellerReviewQty,_that.sellerTotalReview);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductDetailsResponse implements ProductDetailsResponse {
  const _ProductDetailsResponse({this.product, final  List<dynamic>? gellery, this.tags, this.totalProductReviewQty, this.totalReview, final  List<dynamic>? productReviews, final  List<dynamic>? specifications, this.recaptchaSetting, final  List<RelatedProduct>? relatedProducts, this.defaultProfile, this.is_seller_product, this.seller, this.sellerTotalProducts, final  List<dynamic>? this_seller_products, this.sellerReviewQty, this.sellerTotalReview}): _gellery = gellery,_productReviews = productReviews,_specifications = specifications,_relatedProducts = relatedProducts,_this_seller_products = this_seller_products;
  factory _ProductDetailsResponse.fromJson(Map<String, dynamic> json) => _$ProductDetailsResponseFromJson(json);

@override final  Product? product;
 final  List<dynamic>? _gellery;
@override List<dynamic>? get gellery {
  final value = _gellery;
  if (value == null) return null;
  if (_gellery is EqualUnmodifiableListView) return _gellery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? tags;
@override final  int? totalProductReviewQty;
@override final  int? totalReview;
 final  List<dynamic>? _productReviews;
@override List<dynamic>? get productReviews {
  final value = _productReviews;
  if (value == null) return null;
  if (_productReviews is EqualUnmodifiableListView) return _productReviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _specifications;
@override List<dynamic>? get specifications {
  final value = _specifications;
  if (value == null) return null;
  if (_specifications is EqualUnmodifiableListView) return _specifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  RecaptchaSetting? recaptchaSetting;
 final  List<RelatedProduct>? _relatedProducts;
@override List<RelatedProduct>? get relatedProducts {
  final value = _relatedProducts;
  if (value == null) return null;
  if (_relatedProducts is EqualUnmodifiableListView) return _relatedProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DefaultProfile? defaultProfile;
@override final  bool? is_seller_product;
@override final  Seller? seller;
@override final  int? sellerTotalProducts;
 final  List<dynamic>? _this_seller_products;
@override List<dynamic>? get this_seller_products {
  final value = _this_seller_products;
  if (value == null) return null;
  if (_this_seller_products is EqualUnmodifiableListView) return _this_seller_products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? sellerReviewQty;
@override final  int? sellerTotalReview;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDetailsResponse&&(identical(other.product, product) || other.product == product)&&const DeepCollectionEquality().equals(other._gellery, _gellery)&&(identical(other.tags, tags) || other.tags == tags)&&(identical(other.totalProductReviewQty, totalProductReviewQty) || other.totalProductReviewQty == totalProductReviewQty)&&(identical(other.totalReview, totalReview) || other.totalReview == totalReview)&&const DeepCollectionEquality().equals(other._productReviews, _productReviews)&&const DeepCollectionEquality().equals(other._specifications, _specifications)&&(identical(other.recaptchaSetting, recaptchaSetting) || other.recaptchaSetting == recaptchaSetting)&&const DeepCollectionEquality().equals(other._relatedProducts, _relatedProducts)&&(identical(other.defaultProfile, defaultProfile) || other.defaultProfile == defaultProfile)&&(identical(other.is_seller_product, is_seller_product) || other.is_seller_product == is_seller_product)&&(identical(other.seller, seller) || other.seller == seller)&&(identical(other.sellerTotalProducts, sellerTotalProducts) || other.sellerTotalProducts == sellerTotalProducts)&&const DeepCollectionEquality().equals(other._this_seller_products, _this_seller_products)&&(identical(other.sellerReviewQty, sellerReviewQty) || other.sellerReviewQty == sellerReviewQty)&&(identical(other.sellerTotalReview, sellerTotalReview) || other.sellerTotalReview == sellerTotalReview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product,const DeepCollectionEquality().hash(_gellery),tags,totalProductReviewQty,totalReview,const DeepCollectionEquality().hash(_productReviews),const DeepCollectionEquality().hash(_specifications),recaptchaSetting,const DeepCollectionEquality().hash(_relatedProducts),defaultProfile,is_seller_product,seller,sellerTotalProducts,const DeepCollectionEquality().hash(_this_seller_products),sellerReviewQty,sellerTotalReview);

@override
String toString() {
  return 'ProductDetailsResponse(product: $product, gellery: $gellery, tags: $tags, totalProductReviewQty: $totalProductReviewQty, totalReview: $totalReview, productReviews: $productReviews, specifications: $specifications, recaptchaSetting: $recaptchaSetting, relatedProducts: $relatedProducts, defaultProfile: $defaultProfile, is_seller_product: $is_seller_product, seller: $seller, sellerTotalProducts: $sellerTotalProducts, this_seller_products: $this_seller_products, sellerReviewQty: $sellerReviewQty, sellerTotalReview: $sellerTotalReview)';
}


}

/// @nodoc
abstract mixin class _$ProductDetailsResponseCopyWith<$Res> implements $ProductDetailsResponseCopyWith<$Res> {
  factory _$ProductDetailsResponseCopyWith(_ProductDetailsResponse value, $Res Function(_ProductDetailsResponse) _then) = __$ProductDetailsResponseCopyWithImpl;
@override @useResult
$Res call({
 Product? product, List<dynamic>? gellery, String? tags, int? totalProductReviewQty, int? totalReview, List<dynamic>? productReviews, List<dynamic>? specifications, RecaptchaSetting? recaptchaSetting, List<RelatedProduct>? relatedProducts, DefaultProfile? defaultProfile, bool? is_seller_product, Seller? seller, int? sellerTotalProducts, List<dynamic>? this_seller_products, int? sellerReviewQty, int? sellerTotalReview
});


@override $ProductCopyWith<$Res>? get product;@override $RecaptchaSettingCopyWith<$Res>? get recaptchaSetting;@override $DefaultProfileCopyWith<$Res>? get defaultProfile;@override $SellerCopyWith<$Res>? get seller;

}
/// @nodoc
class __$ProductDetailsResponseCopyWithImpl<$Res>
    implements _$ProductDetailsResponseCopyWith<$Res> {
  __$ProductDetailsResponseCopyWithImpl(this._self, this._then);

  final _ProductDetailsResponse _self;
  final $Res Function(_ProductDetailsResponse) _then;

/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = freezed,Object? gellery = freezed,Object? tags = freezed,Object? totalProductReviewQty = freezed,Object? totalReview = freezed,Object? productReviews = freezed,Object? specifications = freezed,Object? recaptchaSetting = freezed,Object? relatedProducts = freezed,Object? defaultProfile = freezed,Object? is_seller_product = freezed,Object? seller = freezed,Object? sellerTotalProducts = freezed,Object? this_seller_products = freezed,Object? sellerReviewQty = freezed,Object? sellerTotalReview = freezed,}) {
  return _then(_ProductDetailsResponse(
product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product?,gellery: freezed == gellery ? _self._gellery : gellery // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as String?,totalProductReviewQty: freezed == totalProductReviewQty ? _self.totalProductReviewQty : totalProductReviewQty // ignore: cast_nullable_to_non_nullable
as int?,totalReview: freezed == totalReview ? _self.totalReview : totalReview // ignore: cast_nullable_to_non_nullable
as int?,productReviews: freezed == productReviews ? _self._productReviews : productReviews // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,specifications: freezed == specifications ? _self._specifications : specifications // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,recaptchaSetting: freezed == recaptchaSetting ? _self.recaptchaSetting : recaptchaSetting // ignore: cast_nullable_to_non_nullable
as RecaptchaSetting?,relatedProducts: freezed == relatedProducts ? _self._relatedProducts : relatedProducts // ignore: cast_nullable_to_non_nullable
as List<RelatedProduct>?,defaultProfile: freezed == defaultProfile ? _self.defaultProfile : defaultProfile // ignore: cast_nullable_to_non_nullable
as DefaultProfile?,is_seller_product: freezed == is_seller_product ? _self.is_seller_product : is_seller_product // ignore: cast_nullable_to_non_nullable
as bool?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as Seller?,sellerTotalProducts: freezed == sellerTotalProducts ? _self.sellerTotalProducts : sellerTotalProducts // ignore: cast_nullable_to_non_nullable
as int?,this_seller_products: freezed == this_seller_products ? _self._this_seller_products : this_seller_products // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,sellerReviewQty: freezed == sellerReviewQty ? _self.sellerReviewQty : sellerReviewQty // ignore: cast_nullable_to_non_nullable
as int?,sellerTotalReview: freezed == sellerTotalReview ? _self.sellerTotalReview : sellerTotalReview // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecaptchaSettingCopyWith<$Res>? get recaptchaSetting {
    if (_self.recaptchaSetting == null) {
    return null;
  }

  return $RecaptchaSettingCopyWith<$Res>(_self.recaptchaSetting!, (value) {
    return _then(_self.copyWith(recaptchaSetting: value));
  });
}/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DefaultProfileCopyWith<$Res>? get defaultProfile {
    if (_self.defaultProfile == null) {
    return null;
  }

  return $DefaultProfileCopyWith<$Res>(_self.defaultProfile!, (value) {
    return _then(_self.copyWith(defaultProfile: value));
  });
}/// Create a copy of ProductDetailsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $SellerCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}


/// @nodoc
mixin _$Product {

 int? get id; String? get name; String? get short_name; String? get slug; String? get thumb_image; int? get vendor_id; int? get category_id; int? get sub_category_id; int? get child_category_id; int? get brand_id; int? get qty; String? get weight; int? get sold_qty; String? get short_description; String? get long_description; String? get video_link; String? get sku; String? get seo_title; String? get seo_description; num? get price; num? get offer_price; dynamic get tags; int? get show_homepage; int? get is_undefine; int? get is_featured; int? get new_product; int? get is_top; int? get is_best; int? get status; int? get is_specification; int? get approve_by_admin; String? get is_bundle_product; String? get bundle_products; String? get bundle_product_offer_type; String? get bundle_product_offer; String? get created_at; String? get updated_at; String? get averageRating; String? get totalSold; Category? get category; Brand? get brand; List<ActiveVariant>? get active_variants; List<dynamic>? get avg_review;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.short_name, short_name) || other.short_name == short_name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.thumb_image, thumb_image) || other.thumb_image == thumb_image)&&(identical(other.vendor_id, vendor_id) || other.vendor_id == vendor_id)&&(identical(other.category_id, category_id) || other.category_id == category_id)&&(identical(other.sub_category_id, sub_category_id) || other.sub_category_id == sub_category_id)&&(identical(other.child_category_id, child_category_id) || other.child_category_id == child_category_id)&&(identical(other.brand_id, brand_id) || other.brand_id == brand_id)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.sold_qty, sold_qty) || other.sold_qty == sold_qty)&&(identical(other.short_description, short_description) || other.short_description == short_description)&&(identical(other.long_description, long_description) || other.long_description == long_description)&&(identical(other.video_link, video_link) || other.video_link == video_link)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.seo_title, seo_title) || other.seo_title == seo_title)&&(identical(other.seo_description, seo_description) || other.seo_description == seo_description)&&(identical(other.price, price) || other.price == price)&&(identical(other.offer_price, offer_price) || other.offer_price == offer_price)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.show_homepage, show_homepage) || other.show_homepage == show_homepage)&&(identical(other.is_undefine, is_undefine) || other.is_undefine == is_undefine)&&(identical(other.is_featured, is_featured) || other.is_featured == is_featured)&&(identical(other.new_product, new_product) || other.new_product == new_product)&&(identical(other.is_top, is_top) || other.is_top == is_top)&&(identical(other.is_best, is_best) || other.is_best == is_best)&&(identical(other.status, status) || other.status == status)&&(identical(other.is_specification, is_specification) || other.is_specification == is_specification)&&(identical(other.approve_by_admin, approve_by_admin) || other.approve_by_admin == approve_by_admin)&&(identical(other.is_bundle_product, is_bundle_product) || other.is_bundle_product == is_bundle_product)&&(identical(other.bundle_products, bundle_products) || other.bundle_products == bundle_products)&&(identical(other.bundle_product_offer_type, bundle_product_offer_type) || other.bundle_product_offer_type == bundle_product_offer_type)&&(identical(other.bundle_product_offer, bundle_product_offer) || other.bundle_product_offer == bundle_product_offer)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.totalSold, totalSold) || other.totalSold == totalSold)&&(identical(other.category, category) || other.category == category)&&(identical(other.brand, brand) || other.brand == brand)&&const DeepCollectionEquality().equals(other.active_variants, active_variants)&&const DeepCollectionEquality().equals(other.avg_review, avg_review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,short_name,slug,thumb_image,vendor_id,category_id,sub_category_id,child_category_id,brand_id,qty,weight,sold_qty,short_description,long_description,video_link,sku,seo_title,seo_description,price,offer_price,const DeepCollectionEquality().hash(tags),show_homepage,is_undefine,is_featured,new_product,is_top,is_best,status,is_specification,approve_by_admin,is_bundle_product,bundle_products,bundle_product_offer_type,bundle_product_offer,created_at,updated_at,averageRating,totalSold,category,brand,const DeepCollectionEquality().hash(active_variants),const DeepCollectionEquality().hash(avg_review)]);

@override
String toString() {
  return 'Product(id: $id, name: $name, short_name: $short_name, slug: $slug, thumb_image: $thumb_image, vendor_id: $vendor_id, category_id: $category_id, sub_category_id: $sub_category_id, child_category_id: $child_category_id, brand_id: $brand_id, qty: $qty, weight: $weight, sold_qty: $sold_qty, short_description: $short_description, long_description: $long_description, video_link: $video_link, sku: $sku, seo_title: $seo_title, seo_description: $seo_description, price: $price, offer_price: $offer_price, tags: $tags, show_homepage: $show_homepage, is_undefine: $is_undefine, is_featured: $is_featured, new_product: $new_product, is_top: $is_top, is_best: $is_best, status: $status, is_specification: $is_specification, approve_by_admin: $approve_by_admin, is_bundle_product: $is_bundle_product, bundle_products: $bundle_products, bundle_product_offer_type: $bundle_product_offer_type, bundle_product_offer: $bundle_product_offer, created_at: $created_at, updated_at: $updated_at, averageRating: $averageRating, totalSold: $totalSold, category: $category, brand: $brand, active_variants: $active_variants, avg_review: $avg_review)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? short_name, String? slug, String? thumb_image, int? vendor_id, int? category_id, int? sub_category_id, int? child_category_id, int? brand_id, int? qty, String? weight, int? sold_qty, String? short_description, String? long_description, String? video_link, String? sku, String? seo_title, String? seo_description, num? price, num? offer_price, dynamic tags, int? show_homepage, int? is_undefine, int? is_featured, int? new_product, int? is_top, int? is_best, int? status, int? is_specification, int? approve_by_admin, String? is_bundle_product, String? bundle_products, String? bundle_product_offer_type, String? bundle_product_offer, String? created_at, String? updated_at, String? averageRating, String? totalSold, Category? category, Brand? brand, List<ActiveVariant>? active_variants, List<dynamic>? avg_review
});


$CategoryCopyWith<$Res>? get category;$BrandCopyWith<$Res>? get brand;

}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? short_name = freezed,Object? slug = freezed,Object? thumb_image = freezed,Object? vendor_id = freezed,Object? category_id = freezed,Object? sub_category_id = freezed,Object? child_category_id = freezed,Object? brand_id = freezed,Object? qty = freezed,Object? weight = freezed,Object? sold_qty = freezed,Object? short_description = freezed,Object? long_description = freezed,Object? video_link = freezed,Object? sku = freezed,Object? seo_title = freezed,Object? seo_description = freezed,Object? price = freezed,Object? offer_price = freezed,Object? tags = freezed,Object? show_homepage = freezed,Object? is_undefine = freezed,Object? is_featured = freezed,Object? new_product = freezed,Object? is_top = freezed,Object? is_best = freezed,Object? status = freezed,Object? is_specification = freezed,Object? approve_by_admin = freezed,Object? is_bundle_product = freezed,Object? bundle_products = freezed,Object? bundle_product_offer_type = freezed,Object? bundle_product_offer = freezed,Object? created_at = freezed,Object? updated_at = freezed,Object? averageRating = freezed,Object? totalSold = freezed,Object? category = freezed,Object? brand = freezed,Object? active_variants = freezed,Object? avg_review = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,short_name: freezed == short_name ? _self.short_name : short_name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,thumb_image: freezed == thumb_image ? _self.thumb_image : thumb_image // ignore: cast_nullable_to_non_nullable
as String?,vendor_id: freezed == vendor_id ? _self.vendor_id : vendor_id // ignore: cast_nullable_to_non_nullable
as int?,category_id: freezed == category_id ? _self.category_id : category_id // ignore: cast_nullable_to_non_nullable
as int?,sub_category_id: freezed == sub_category_id ? _self.sub_category_id : sub_category_id // ignore: cast_nullable_to_non_nullable
as int?,child_category_id: freezed == child_category_id ? _self.child_category_id : child_category_id // ignore: cast_nullable_to_non_nullable
as int?,brand_id: freezed == brand_id ? _self.brand_id : brand_id // ignore: cast_nullable_to_non_nullable
as int?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String?,sold_qty: freezed == sold_qty ? _self.sold_qty : sold_qty // ignore: cast_nullable_to_non_nullable
as int?,short_description: freezed == short_description ? _self.short_description : short_description // ignore: cast_nullable_to_non_nullable
as String?,long_description: freezed == long_description ? _self.long_description : long_description // ignore: cast_nullable_to_non_nullable
as String?,video_link: freezed == video_link ? _self.video_link : video_link // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,seo_title: freezed == seo_title ? _self.seo_title : seo_title // ignore: cast_nullable_to_non_nullable
as String?,seo_description: freezed == seo_description ? _self.seo_description : seo_description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,offer_price: freezed == offer_price ? _self.offer_price : offer_price // ignore: cast_nullable_to_non_nullable
as num?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as dynamic,show_homepage: freezed == show_homepage ? _self.show_homepage : show_homepage // ignore: cast_nullable_to_non_nullable
as int?,is_undefine: freezed == is_undefine ? _self.is_undefine : is_undefine // ignore: cast_nullable_to_non_nullable
as int?,is_featured: freezed == is_featured ? _self.is_featured : is_featured // ignore: cast_nullable_to_non_nullable
as int?,new_product: freezed == new_product ? _self.new_product : new_product // ignore: cast_nullable_to_non_nullable
as int?,is_top: freezed == is_top ? _self.is_top : is_top // ignore: cast_nullable_to_non_nullable
as int?,is_best: freezed == is_best ? _self.is_best : is_best // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,is_specification: freezed == is_specification ? _self.is_specification : is_specification // ignore: cast_nullable_to_non_nullable
as int?,approve_by_admin: freezed == approve_by_admin ? _self.approve_by_admin : approve_by_admin // ignore: cast_nullable_to_non_nullable
as int?,is_bundle_product: freezed == is_bundle_product ? _self.is_bundle_product : is_bundle_product // ignore: cast_nullable_to_non_nullable
as String?,bundle_products: freezed == bundle_products ? _self.bundle_products : bundle_products // ignore: cast_nullable_to_non_nullable
as String?,bundle_product_offer_type: freezed == bundle_product_offer_type ? _self.bundle_product_offer_type : bundle_product_offer_type // ignore: cast_nullable_to_non_nullable
as String?,bundle_product_offer: freezed == bundle_product_offer ? _self.bundle_product_offer : bundle_product_offer // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as String?,totalSold: freezed == totalSold ? _self.totalSold : totalSold // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as Brand?,active_variants: freezed == active_variants ? _self.active_variants : active_variants // ignore: cast_nullable_to_non_nullable
as List<ActiveVariant>?,avg_review: freezed == avg_review ? _self.avg_review : avg_review // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandCopyWith<$Res>? get brand {
    if (_self.brand == null) {
    return null;
  }

  return $BrandCopyWith<$Res>(_self.brand!, (value) {
    return _then(_self.copyWith(brand: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? short_name,  String? slug,  String? thumb_image,  int? vendor_id,  int? category_id,  int? sub_category_id,  int? child_category_id,  int? brand_id,  int? qty,  String? weight,  int? sold_qty,  String? short_description,  String? long_description,  String? video_link,  String? sku,  String? seo_title,  String? seo_description,  num? price,  num? offer_price,  dynamic tags,  int? show_homepage,  int? is_undefine,  int? is_featured,  int? new_product,  int? is_top,  int? is_best,  int? status,  int? is_specification,  int? approve_by_admin,  String? is_bundle_product,  String? bundle_products,  String? bundle_product_offer_type,  String? bundle_product_offer,  String? created_at,  String? updated_at,  String? averageRating,  String? totalSold,  Category? category,  Brand? brand,  List<ActiveVariant>? active_variants,  List<dynamic>? avg_review)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.short_name,_that.slug,_that.thumb_image,_that.vendor_id,_that.category_id,_that.sub_category_id,_that.child_category_id,_that.brand_id,_that.qty,_that.weight,_that.sold_qty,_that.short_description,_that.long_description,_that.video_link,_that.sku,_that.seo_title,_that.seo_description,_that.price,_that.offer_price,_that.tags,_that.show_homepage,_that.is_undefine,_that.is_featured,_that.new_product,_that.is_top,_that.is_best,_that.status,_that.is_specification,_that.approve_by_admin,_that.is_bundle_product,_that.bundle_products,_that.bundle_product_offer_type,_that.bundle_product_offer,_that.created_at,_that.updated_at,_that.averageRating,_that.totalSold,_that.category,_that.brand,_that.active_variants,_that.avg_review);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? short_name,  String? slug,  String? thumb_image,  int? vendor_id,  int? category_id,  int? sub_category_id,  int? child_category_id,  int? brand_id,  int? qty,  String? weight,  int? sold_qty,  String? short_description,  String? long_description,  String? video_link,  String? sku,  String? seo_title,  String? seo_description,  num? price,  num? offer_price,  dynamic tags,  int? show_homepage,  int? is_undefine,  int? is_featured,  int? new_product,  int? is_top,  int? is_best,  int? status,  int? is_specification,  int? approve_by_admin,  String? is_bundle_product,  String? bundle_products,  String? bundle_product_offer_type,  String? bundle_product_offer,  String? created_at,  String? updated_at,  String? averageRating,  String? totalSold,  Category? category,  Brand? brand,  List<ActiveVariant>? active_variants,  List<dynamic>? avg_review)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.name,_that.short_name,_that.slug,_that.thumb_image,_that.vendor_id,_that.category_id,_that.sub_category_id,_that.child_category_id,_that.brand_id,_that.qty,_that.weight,_that.sold_qty,_that.short_description,_that.long_description,_that.video_link,_that.sku,_that.seo_title,_that.seo_description,_that.price,_that.offer_price,_that.tags,_that.show_homepage,_that.is_undefine,_that.is_featured,_that.new_product,_that.is_top,_that.is_best,_that.status,_that.is_specification,_that.approve_by_admin,_that.is_bundle_product,_that.bundle_products,_that.bundle_product_offer_type,_that.bundle_product_offer,_that.created_at,_that.updated_at,_that.averageRating,_that.totalSold,_that.category,_that.brand,_that.active_variants,_that.avg_review);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? short_name,  String? slug,  String? thumb_image,  int? vendor_id,  int? category_id,  int? sub_category_id,  int? child_category_id,  int? brand_id,  int? qty,  String? weight,  int? sold_qty,  String? short_description,  String? long_description,  String? video_link,  String? sku,  String? seo_title,  String? seo_description,  num? price,  num? offer_price,  dynamic tags,  int? show_homepage,  int? is_undefine,  int? is_featured,  int? new_product,  int? is_top,  int? is_best,  int? status,  int? is_specification,  int? approve_by_admin,  String? is_bundle_product,  String? bundle_products,  String? bundle_product_offer_type,  String? bundle_product_offer,  String? created_at,  String? updated_at,  String? averageRating,  String? totalSold,  Category? category,  Brand? brand,  List<ActiveVariant>? active_variants,  List<dynamic>? avg_review)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.short_name,_that.slug,_that.thumb_image,_that.vendor_id,_that.category_id,_that.sub_category_id,_that.child_category_id,_that.brand_id,_that.qty,_that.weight,_that.sold_qty,_that.short_description,_that.long_description,_that.video_link,_that.sku,_that.seo_title,_that.seo_description,_that.price,_that.offer_price,_that.tags,_that.show_homepage,_that.is_undefine,_that.is_featured,_that.new_product,_that.is_top,_that.is_best,_that.status,_that.is_specification,_that.approve_by_admin,_that.is_bundle_product,_that.bundle_products,_that.bundle_product_offer_type,_that.bundle_product_offer,_that.created_at,_that.updated_at,_that.averageRating,_that.totalSold,_that.category,_that.brand,_that.active_variants,_that.avg_review);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({this.id, this.name, this.short_name, this.slug, this.thumb_image, this.vendor_id, this.category_id, this.sub_category_id, this.child_category_id, this.brand_id, this.qty, this.weight, this.sold_qty, this.short_description, this.long_description, this.video_link, this.sku, this.seo_title, this.seo_description, this.price, this.offer_price, this.tags, this.show_homepage, this.is_undefine, this.is_featured, this.new_product, this.is_top, this.is_best, this.status, this.is_specification, this.approve_by_admin, this.is_bundle_product, this.bundle_products, this.bundle_product_offer_type, this.bundle_product_offer, this.created_at, this.updated_at, this.averageRating, this.totalSold, this.category, this.brand, final  List<ActiveVariant>? active_variants, final  List<dynamic>? avg_review}): _active_variants = active_variants,_avg_review = avg_review;
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? short_name;
@override final  String? slug;
@override final  String? thumb_image;
@override final  int? vendor_id;
@override final  int? category_id;
@override final  int? sub_category_id;
@override final  int? child_category_id;
@override final  int? brand_id;
@override final  int? qty;
@override final  String? weight;
@override final  int? sold_qty;
@override final  String? short_description;
@override final  String? long_description;
@override final  String? video_link;
@override final  String? sku;
@override final  String? seo_title;
@override final  String? seo_description;
@override final  num? price;
@override final  num? offer_price;
@override final  dynamic tags;
@override final  int? show_homepage;
@override final  int? is_undefine;
@override final  int? is_featured;
@override final  int? new_product;
@override final  int? is_top;
@override final  int? is_best;
@override final  int? status;
@override final  int? is_specification;
@override final  int? approve_by_admin;
@override final  String? is_bundle_product;
@override final  String? bundle_products;
@override final  String? bundle_product_offer_type;
@override final  String? bundle_product_offer;
@override final  String? created_at;
@override final  String? updated_at;
@override final  String? averageRating;
@override final  String? totalSold;
@override final  Category? category;
@override final  Brand? brand;
 final  List<ActiveVariant>? _active_variants;
@override List<ActiveVariant>? get active_variants {
  final value = _active_variants;
  if (value == null) return null;
  if (_active_variants is EqualUnmodifiableListView) return _active_variants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.short_name, short_name) || other.short_name == short_name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.thumb_image, thumb_image) || other.thumb_image == thumb_image)&&(identical(other.vendor_id, vendor_id) || other.vendor_id == vendor_id)&&(identical(other.category_id, category_id) || other.category_id == category_id)&&(identical(other.sub_category_id, sub_category_id) || other.sub_category_id == sub_category_id)&&(identical(other.child_category_id, child_category_id) || other.child_category_id == child_category_id)&&(identical(other.brand_id, brand_id) || other.brand_id == brand_id)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.sold_qty, sold_qty) || other.sold_qty == sold_qty)&&(identical(other.short_description, short_description) || other.short_description == short_description)&&(identical(other.long_description, long_description) || other.long_description == long_description)&&(identical(other.video_link, video_link) || other.video_link == video_link)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.seo_title, seo_title) || other.seo_title == seo_title)&&(identical(other.seo_description, seo_description) || other.seo_description == seo_description)&&(identical(other.price, price) || other.price == price)&&(identical(other.offer_price, offer_price) || other.offer_price == offer_price)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.show_homepage, show_homepage) || other.show_homepage == show_homepage)&&(identical(other.is_undefine, is_undefine) || other.is_undefine == is_undefine)&&(identical(other.is_featured, is_featured) || other.is_featured == is_featured)&&(identical(other.new_product, new_product) || other.new_product == new_product)&&(identical(other.is_top, is_top) || other.is_top == is_top)&&(identical(other.is_best, is_best) || other.is_best == is_best)&&(identical(other.status, status) || other.status == status)&&(identical(other.is_specification, is_specification) || other.is_specification == is_specification)&&(identical(other.approve_by_admin, approve_by_admin) || other.approve_by_admin == approve_by_admin)&&(identical(other.is_bundle_product, is_bundle_product) || other.is_bundle_product == is_bundle_product)&&(identical(other.bundle_products, bundle_products) || other.bundle_products == bundle_products)&&(identical(other.bundle_product_offer_type, bundle_product_offer_type) || other.bundle_product_offer_type == bundle_product_offer_type)&&(identical(other.bundle_product_offer, bundle_product_offer) || other.bundle_product_offer == bundle_product_offer)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.totalSold, totalSold) || other.totalSold == totalSold)&&(identical(other.category, category) || other.category == category)&&(identical(other.brand, brand) || other.brand == brand)&&const DeepCollectionEquality().equals(other._active_variants, _active_variants)&&const DeepCollectionEquality().equals(other._avg_review, _avg_review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,short_name,slug,thumb_image,vendor_id,category_id,sub_category_id,child_category_id,brand_id,qty,weight,sold_qty,short_description,long_description,video_link,sku,seo_title,seo_description,price,offer_price,const DeepCollectionEquality().hash(tags),show_homepage,is_undefine,is_featured,new_product,is_top,is_best,status,is_specification,approve_by_admin,is_bundle_product,bundle_products,bundle_product_offer_type,bundle_product_offer,created_at,updated_at,averageRating,totalSold,category,brand,const DeepCollectionEquality().hash(_active_variants),const DeepCollectionEquality().hash(_avg_review)]);

@override
String toString() {
  return 'Product(id: $id, name: $name, short_name: $short_name, slug: $slug, thumb_image: $thumb_image, vendor_id: $vendor_id, category_id: $category_id, sub_category_id: $sub_category_id, child_category_id: $child_category_id, brand_id: $brand_id, qty: $qty, weight: $weight, sold_qty: $sold_qty, short_description: $short_description, long_description: $long_description, video_link: $video_link, sku: $sku, seo_title: $seo_title, seo_description: $seo_description, price: $price, offer_price: $offer_price, tags: $tags, show_homepage: $show_homepage, is_undefine: $is_undefine, is_featured: $is_featured, new_product: $new_product, is_top: $is_top, is_best: $is_best, status: $status, is_specification: $is_specification, approve_by_admin: $approve_by_admin, is_bundle_product: $is_bundle_product, bundle_products: $bundle_products, bundle_product_offer_type: $bundle_product_offer_type, bundle_product_offer: $bundle_product_offer, created_at: $created_at, updated_at: $updated_at, averageRating: $averageRating, totalSold: $totalSold, category: $category, brand: $brand, active_variants: $active_variants, avg_review: $avg_review)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? short_name, String? slug, String? thumb_image, int? vendor_id, int? category_id, int? sub_category_id, int? child_category_id, int? brand_id, int? qty, String? weight, int? sold_qty, String? short_description, String? long_description, String? video_link, String? sku, String? seo_title, String? seo_description, num? price, num? offer_price, dynamic tags, int? show_homepage, int? is_undefine, int? is_featured, int? new_product, int? is_top, int? is_best, int? status, int? is_specification, int? approve_by_admin, String? is_bundle_product, String? bundle_products, String? bundle_product_offer_type, String? bundle_product_offer, String? created_at, String? updated_at, String? averageRating, String? totalSold, Category? category, Brand? brand, List<ActiveVariant>? active_variants, List<dynamic>? avg_review
});


@override $CategoryCopyWith<$Res>? get category;@override $BrandCopyWith<$Res>? get brand;

}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? short_name = freezed,Object? slug = freezed,Object? thumb_image = freezed,Object? vendor_id = freezed,Object? category_id = freezed,Object? sub_category_id = freezed,Object? child_category_id = freezed,Object? brand_id = freezed,Object? qty = freezed,Object? weight = freezed,Object? sold_qty = freezed,Object? short_description = freezed,Object? long_description = freezed,Object? video_link = freezed,Object? sku = freezed,Object? seo_title = freezed,Object? seo_description = freezed,Object? price = freezed,Object? offer_price = freezed,Object? tags = freezed,Object? show_homepage = freezed,Object? is_undefine = freezed,Object? is_featured = freezed,Object? new_product = freezed,Object? is_top = freezed,Object? is_best = freezed,Object? status = freezed,Object? is_specification = freezed,Object? approve_by_admin = freezed,Object? is_bundle_product = freezed,Object? bundle_products = freezed,Object? bundle_product_offer_type = freezed,Object? bundle_product_offer = freezed,Object? created_at = freezed,Object? updated_at = freezed,Object? averageRating = freezed,Object? totalSold = freezed,Object? category = freezed,Object? brand = freezed,Object? active_variants = freezed,Object? avg_review = freezed,}) {
  return _then(_Product(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,short_name: freezed == short_name ? _self.short_name : short_name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,thumb_image: freezed == thumb_image ? _self.thumb_image : thumb_image // ignore: cast_nullable_to_non_nullable
as String?,vendor_id: freezed == vendor_id ? _self.vendor_id : vendor_id // ignore: cast_nullable_to_non_nullable
as int?,category_id: freezed == category_id ? _self.category_id : category_id // ignore: cast_nullable_to_non_nullable
as int?,sub_category_id: freezed == sub_category_id ? _self.sub_category_id : sub_category_id // ignore: cast_nullable_to_non_nullable
as int?,child_category_id: freezed == child_category_id ? _self.child_category_id : child_category_id // ignore: cast_nullable_to_non_nullable
as int?,brand_id: freezed == brand_id ? _self.brand_id : brand_id // ignore: cast_nullable_to_non_nullable
as int?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String?,sold_qty: freezed == sold_qty ? _self.sold_qty : sold_qty // ignore: cast_nullable_to_non_nullable
as int?,short_description: freezed == short_description ? _self.short_description : short_description // ignore: cast_nullable_to_non_nullable
as String?,long_description: freezed == long_description ? _self.long_description : long_description // ignore: cast_nullable_to_non_nullable
as String?,video_link: freezed == video_link ? _self.video_link : video_link // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,seo_title: freezed == seo_title ? _self.seo_title : seo_title // ignore: cast_nullable_to_non_nullable
as String?,seo_description: freezed == seo_description ? _self.seo_description : seo_description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,offer_price: freezed == offer_price ? _self.offer_price : offer_price // ignore: cast_nullable_to_non_nullable
as num?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as dynamic,show_homepage: freezed == show_homepage ? _self.show_homepage : show_homepage // ignore: cast_nullable_to_non_nullable
as int?,is_undefine: freezed == is_undefine ? _self.is_undefine : is_undefine // ignore: cast_nullable_to_non_nullable
as int?,is_featured: freezed == is_featured ? _self.is_featured : is_featured // ignore: cast_nullable_to_non_nullable
as int?,new_product: freezed == new_product ? _self.new_product : new_product // ignore: cast_nullable_to_non_nullable
as int?,is_top: freezed == is_top ? _self.is_top : is_top // ignore: cast_nullable_to_non_nullable
as int?,is_best: freezed == is_best ? _self.is_best : is_best // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,is_specification: freezed == is_specification ? _self.is_specification : is_specification // ignore: cast_nullable_to_non_nullable
as int?,approve_by_admin: freezed == approve_by_admin ? _self.approve_by_admin : approve_by_admin // ignore: cast_nullable_to_non_nullable
as int?,is_bundle_product: freezed == is_bundle_product ? _self.is_bundle_product : is_bundle_product // ignore: cast_nullable_to_non_nullable
as String?,bundle_products: freezed == bundle_products ? _self.bundle_products : bundle_products // ignore: cast_nullable_to_non_nullable
as String?,bundle_product_offer_type: freezed == bundle_product_offer_type ? _self.bundle_product_offer_type : bundle_product_offer_type // ignore: cast_nullable_to_non_nullable
as String?,bundle_product_offer: freezed == bundle_product_offer ? _self.bundle_product_offer : bundle_product_offer // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as String?,totalSold: freezed == totalSold ? _self.totalSold : totalSold // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,brand: freezed == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as Brand?,active_variants: freezed == active_variants ? _self._active_variants : active_variants // ignore: cast_nullable_to_non_nullable
as List<ActiveVariant>?,avg_review: freezed == avg_review ? _self._avg_review : avg_review // ignore: cast_nullable_to_non_nullable
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
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BrandCopyWith<$Res>? get brand {
    if (_self.brand == null) {
    return null;
  }

  return $BrandCopyWith<$Res>(_self.brand!, (value) {
    return _then(_self.copyWith(brand: value));
  });
}
}


/// @nodoc
mixin _$Category {

 int? get id; String? get name; String? get slug; String? get icon; int? get status; String? get image; String? get created_at; String? get updated_at;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.status, status) || other.status == status)&&(identical(other.image, image) || other.image == image)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,icon,status,image,created_at,updated_at);

@override
String toString() {
  return 'Category(id: $id, name: $name, slug: $slug, icon: $icon, status: $status, image: $image, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? slug, String? icon, int? status, String? image, String? created_at, String? updated_at
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? icon = freezed,Object? status = freezed,Object? image = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? slug,  String? icon,  int? status,  String? image,  String? created_at,  String? updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.icon,_that.status,_that.image,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? slug,  String? icon,  int? status,  String? image,  String? created_at,  String? updated_at)  $default,) {final _that = this;
switch (_that) {
case _Category():
return $default(_that.id,_that.name,_that.slug,_that.icon,_that.status,_that.image,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? slug,  String? icon,  int? status,  String? image,  String? created_at,  String? updated_at)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.icon,_that.status,_that.image,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Category implements Category {
  const _Category({this.id, this.name, this.slug, this.icon, this.status, this.image, this.created_at, this.updated_at});
  factory _Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? slug;
@override final  String? icon;
@override final  int? status;
@override final  String? image;
@override final  String? created_at;
@override final  String? updated_at;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.status, status) || other.status == status)&&(identical(other.image, image) || other.image == image)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,icon,status,image,created_at,updated_at);

@override
String toString() {
  return 'Category(id: $id, name: $name, slug: $slug, icon: $icon, status: $status, image: $image, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? slug, String? icon, int? status, String? image, String? created_at, String? updated_at
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? slug = freezed,Object? icon = freezed,Object? status = freezed,Object? image = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_Category(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Brand {

 int? get id; String? get name;
/// Create a copy of Brand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BrandCopyWith<Brand> get copyWith => _$BrandCopyWithImpl<Brand>(this as Brand, _$identity);

  /// Serializes this Brand to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Brand&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Brand(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $BrandCopyWith<$Res>  {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) _then) = _$BrandCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$BrandCopyWithImpl<$Res>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._self, this._then);

  final Brand _self;
  final $Res Function(Brand) _then;

/// Create a copy of Brand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Brand].
extension BrandPatterns on Brand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Brand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Brand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Brand value)  $default,){
final _that = this;
switch (_that) {
case _Brand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Brand value)?  $default,){
final _that = this;
switch (_that) {
case _Brand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Brand() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _Brand():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _Brand() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Brand implements Brand {
  const _Brand({this.id, this.name});
  factory _Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);

@override final  int? id;
@override final  String? name;

/// Create a copy of Brand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BrandCopyWith<_Brand> get copyWith => __$BrandCopyWithImpl<_Brand>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BrandToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Brand&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Brand(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$BrandCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$BrandCopyWith(_Brand value, $Res Function(_Brand) _then) = __$BrandCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$BrandCopyWithImpl<$Res>
    implements _$BrandCopyWith<$Res> {
  __$BrandCopyWithImpl(this._self, this._then);

  final _Brand _self;
  final $Res Function(_Brand) _then;

/// Create a copy of Brand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_Brand(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ActiveVariant {

 int? get id; String? get name; int? get product_id; List<ActiveVariantItem>? get active_variant_items;
/// Create a copy of ActiveVariant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActiveVariantCopyWith<ActiveVariant> get copyWith => _$ActiveVariantCopyWithImpl<ActiveVariant>(this as ActiveVariant, _$identity);

  /// Serializes this ActiveVariant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActiveVariant&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.product_id, product_id) || other.product_id == product_id)&&const DeepCollectionEquality().equals(other.active_variant_items, active_variant_items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,product_id,const DeepCollectionEquality().hash(active_variant_items));

@override
String toString() {
  return 'ActiveVariant(id: $id, name: $name, product_id: $product_id, active_variant_items: $active_variant_items)';
}


}

/// @nodoc
abstract mixin class $ActiveVariantCopyWith<$Res>  {
  factory $ActiveVariantCopyWith(ActiveVariant value, $Res Function(ActiveVariant) _then) = _$ActiveVariantCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, int? product_id, List<ActiveVariantItem>? active_variant_items
});




}
/// @nodoc
class _$ActiveVariantCopyWithImpl<$Res>
    implements $ActiveVariantCopyWith<$Res> {
  _$ActiveVariantCopyWithImpl(this._self, this._then);

  final ActiveVariant _self;
  final $Res Function(ActiveVariant) _then;

/// Create a copy of ActiveVariant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? product_id = freezed,Object? active_variant_items = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,product_id: freezed == product_id ? _self.product_id : product_id // ignore: cast_nullable_to_non_nullable
as int?,active_variant_items: freezed == active_variant_items ? _self.active_variant_items : active_variant_items // ignore: cast_nullable_to_non_nullable
as List<ActiveVariantItem>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ActiveVariant].
extension ActiveVariantPatterns on ActiveVariant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActiveVariant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActiveVariant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActiveVariant value)  $default,){
final _that = this;
switch (_that) {
case _ActiveVariant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActiveVariant value)?  $default,){
final _that = this;
switch (_that) {
case _ActiveVariant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  int? product_id,  List<ActiveVariantItem>? active_variant_items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActiveVariant() when $default != null:
return $default(_that.id,_that.name,_that.product_id,_that.active_variant_items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  int? product_id,  List<ActiveVariantItem>? active_variant_items)  $default,) {final _that = this;
switch (_that) {
case _ActiveVariant():
return $default(_that.id,_that.name,_that.product_id,_that.active_variant_items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  int? product_id,  List<ActiveVariantItem>? active_variant_items)?  $default,) {final _that = this;
switch (_that) {
case _ActiveVariant() when $default != null:
return $default(_that.id,_that.name,_that.product_id,_that.active_variant_items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActiveVariant implements ActiveVariant {
  const _ActiveVariant({this.id, this.name, this.product_id, final  List<ActiveVariantItem>? active_variant_items}): _active_variant_items = active_variant_items;
  factory _ActiveVariant.fromJson(Map<String, dynamic> json) => _$ActiveVariantFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  int? product_id;
 final  List<ActiveVariantItem>? _active_variant_items;
@override List<ActiveVariantItem>? get active_variant_items {
  final value = _active_variant_items;
  if (value == null) return null;
  if (_active_variant_items is EqualUnmodifiableListView) return _active_variant_items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ActiveVariant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActiveVariantCopyWith<_ActiveVariant> get copyWith => __$ActiveVariantCopyWithImpl<_ActiveVariant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActiveVariantToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActiveVariant&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.product_id, product_id) || other.product_id == product_id)&&const DeepCollectionEquality().equals(other._active_variant_items, _active_variant_items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,product_id,const DeepCollectionEquality().hash(_active_variant_items));

@override
String toString() {
  return 'ActiveVariant(id: $id, name: $name, product_id: $product_id, active_variant_items: $active_variant_items)';
}


}

/// @nodoc
abstract mixin class _$ActiveVariantCopyWith<$Res> implements $ActiveVariantCopyWith<$Res> {
  factory _$ActiveVariantCopyWith(_ActiveVariant value, $Res Function(_ActiveVariant) _then) = __$ActiveVariantCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, int? product_id, List<ActiveVariantItem>? active_variant_items
});




}
/// @nodoc
class __$ActiveVariantCopyWithImpl<$Res>
    implements _$ActiveVariantCopyWith<$Res> {
  __$ActiveVariantCopyWithImpl(this._self, this._then);

  final _ActiveVariant _self;
  final $Res Function(_ActiveVariant) _then;

/// Create a copy of ActiveVariant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? product_id = freezed,Object? active_variant_items = freezed,}) {
  return _then(_ActiveVariant(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,product_id: freezed == product_id ? _self.product_id : product_id // ignore: cast_nullable_to_non_nullable
as int?,active_variant_items: freezed == active_variant_items ? _self._active_variant_items : active_variant_items // ignore: cast_nullable_to_non_nullable
as List<ActiveVariantItem>?,
  ));
}


}


/// @nodoc
mixin _$ActiveVariantItem {

 int? get product_variant_id; String? get name; num? get price; int? get id;
/// Create a copy of ActiveVariantItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActiveVariantItemCopyWith<ActiveVariantItem> get copyWith => _$ActiveVariantItemCopyWithImpl<ActiveVariantItem>(this as ActiveVariantItem, _$identity);

  /// Serializes this ActiveVariantItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActiveVariantItem&&(identical(other.product_variant_id, product_variant_id) || other.product_variant_id == product_variant_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product_variant_id,name,price,id);

@override
String toString() {
  return 'ActiveVariantItem(product_variant_id: $product_variant_id, name: $name, price: $price, id: $id)';
}


}

/// @nodoc
abstract mixin class $ActiveVariantItemCopyWith<$Res>  {
  factory $ActiveVariantItemCopyWith(ActiveVariantItem value, $Res Function(ActiveVariantItem) _then) = _$ActiveVariantItemCopyWithImpl;
@useResult
$Res call({
 int? product_variant_id, String? name, num? price, int? id
});




}
/// @nodoc
class _$ActiveVariantItemCopyWithImpl<$Res>
    implements $ActiveVariantItemCopyWith<$Res> {
  _$ActiveVariantItemCopyWithImpl(this._self, this._then);

  final ActiveVariantItem _self;
  final $Res Function(ActiveVariantItem) _then;

/// Create a copy of ActiveVariantItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product_variant_id = freezed,Object? name = freezed,Object? price = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
product_variant_id: freezed == product_variant_id ? _self.product_variant_id : product_variant_id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ActiveVariantItem].
extension ActiveVariantItemPatterns on ActiveVariantItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActiveVariantItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActiveVariantItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActiveVariantItem value)  $default,){
final _that = this;
switch (_that) {
case _ActiveVariantItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActiveVariantItem value)?  $default,){
final _that = this;
switch (_that) {
case _ActiveVariantItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? product_variant_id,  String? name,  num? price,  int? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActiveVariantItem() when $default != null:
return $default(_that.product_variant_id,_that.name,_that.price,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? product_variant_id,  String? name,  num? price,  int? id)  $default,) {final _that = this;
switch (_that) {
case _ActiveVariantItem():
return $default(_that.product_variant_id,_that.name,_that.price,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? product_variant_id,  String? name,  num? price,  int? id)?  $default,) {final _that = this;
switch (_that) {
case _ActiveVariantItem() when $default != null:
return $default(_that.product_variant_id,_that.name,_that.price,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActiveVariantItem implements ActiveVariantItem {
  const _ActiveVariantItem({this.product_variant_id, this.name, this.price, this.id});
  factory _ActiveVariantItem.fromJson(Map<String, dynamic> json) => _$ActiveVariantItemFromJson(json);

@override final  int? product_variant_id;
@override final  String? name;
@override final  num? price;
@override final  int? id;

/// Create a copy of ActiveVariantItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActiveVariantItemCopyWith<_ActiveVariantItem> get copyWith => __$ActiveVariantItemCopyWithImpl<_ActiveVariantItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActiveVariantItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActiveVariantItem&&(identical(other.product_variant_id, product_variant_id) || other.product_variant_id == product_variant_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,product_variant_id,name,price,id);

@override
String toString() {
  return 'ActiveVariantItem(product_variant_id: $product_variant_id, name: $name, price: $price, id: $id)';
}


}

/// @nodoc
abstract mixin class _$ActiveVariantItemCopyWith<$Res> implements $ActiveVariantItemCopyWith<$Res> {
  factory _$ActiveVariantItemCopyWith(_ActiveVariantItem value, $Res Function(_ActiveVariantItem) _then) = __$ActiveVariantItemCopyWithImpl;
@override @useResult
$Res call({
 int? product_variant_id, String? name, num? price, int? id
});




}
/// @nodoc
class __$ActiveVariantItemCopyWithImpl<$Res>
    implements _$ActiveVariantItemCopyWith<$Res> {
  __$ActiveVariantItemCopyWithImpl(this._self, this._then);

  final _ActiveVariantItem _self;
  final $Res Function(_ActiveVariantItem) _then;

/// Create a copy of ActiveVariantItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product_variant_id = freezed,Object? name = freezed,Object? price = freezed,Object? id = freezed,}) {
  return _then(_ActiveVariantItem(
product_variant_id: freezed == product_variant_id ? _self.product_variant_id : product_variant_id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$RelatedProduct {

 int? get id; String? get name; String? get short_name; String? get slug; String? get thumb_image; int? get vendor_id; int? get category_id; int? get sub_category_id; int? get child_category_id; int? get brand_id; int? get qty; String? get weight; int? get sold_qty; String? get short_description; String? get long_description; String? get video_link; String? get sku; String? get seo_title; String? get seo_description; num? get price; num? get offer_price; dynamic get tags; int? get show_homepage; int? get is_undefine; int? get is_featured; int? get new_product; int? get is_top; int? get is_best; int? get status; int? get is_specification; int? get approve_by_admin; String? get is_bundle_product; String? get bundle_products; String? get bundle_product_offer_type; String? get bundle_product_offer; String? get created_at; String? get updated_at; dynamic get averageRating; dynamic get totalSold; List<ActiveVariant>? get active_variants;
/// Create a copy of RelatedProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelatedProductCopyWith<RelatedProduct> get copyWith => _$RelatedProductCopyWithImpl<RelatedProduct>(this as RelatedProduct, _$identity);

  /// Serializes this RelatedProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RelatedProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.short_name, short_name) || other.short_name == short_name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.thumb_image, thumb_image) || other.thumb_image == thumb_image)&&(identical(other.vendor_id, vendor_id) || other.vendor_id == vendor_id)&&(identical(other.category_id, category_id) || other.category_id == category_id)&&(identical(other.sub_category_id, sub_category_id) || other.sub_category_id == sub_category_id)&&(identical(other.child_category_id, child_category_id) || other.child_category_id == child_category_id)&&(identical(other.brand_id, brand_id) || other.brand_id == brand_id)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.sold_qty, sold_qty) || other.sold_qty == sold_qty)&&(identical(other.short_description, short_description) || other.short_description == short_description)&&(identical(other.long_description, long_description) || other.long_description == long_description)&&(identical(other.video_link, video_link) || other.video_link == video_link)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.seo_title, seo_title) || other.seo_title == seo_title)&&(identical(other.seo_description, seo_description) || other.seo_description == seo_description)&&(identical(other.price, price) || other.price == price)&&(identical(other.offer_price, offer_price) || other.offer_price == offer_price)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.show_homepage, show_homepage) || other.show_homepage == show_homepage)&&(identical(other.is_undefine, is_undefine) || other.is_undefine == is_undefine)&&(identical(other.is_featured, is_featured) || other.is_featured == is_featured)&&(identical(other.new_product, new_product) || other.new_product == new_product)&&(identical(other.is_top, is_top) || other.is_top == is_top)&&(identical(other.is_best, is_best) || other.is_best == is_best)&&(identical(other.status, status) || other.status == status)&&(identical(other.is_specification, is_specification) || other.is_specification == is_specification)&&(identical(other.approve_by_admin, approve_by_admin) || other.approve_by_admin == approve_by_admin)&&(identical(other.is_bundle_product, is_bundle_product) || other.is_bundle_product == is_bundle_product)&&(identical(other.bundle_products, bundle_products) || other.bundle_products == bundle_products)&&(identical(other.bundle_product_offer_type, bundle_product_offer_type) || other.bundle_product_offer_type == bundle_product_offer_type)&&(identical(other.bundle_product_offer, bundle_product_offer) || other.bundle_product_offer == bundle_product_offer)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at)&&const DeepCollectionEquality().equals(other.averageRating, averageRating)&&const DeepCollectionEquality().equals(other.totalSold, totalSold)&&const DeepCollectionEquality().equals(other.active_variants, active_variants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,short_name,slug,thumb_image,vendor_id,category_id,sub_category_id,child_category_id,brand_id,qty,weight,sold_qty,short_description,long_description,video_link,sku,seo_title,seo_description,price,offer_price,const DeepCollectionEquality().hash(tags),show_homepage,is_undefine,is_featured,new_product,is_top,is_best,status,is_specification,approve_by_admin,is_bundle_product,bundle_products,bundle_product_offer_type,bundle_product_offer,created_at,updated_at,const DeepCollectionEquality().hash(averageRating),const DeepCollectionEquality().hash(totalSold),const DeepCollectionEquality().hash(active_variants)]);

@override
String toString() {
  return 'RelatedProduct(id: $id, name: $name, short_name: $short_name, slug: $slug, thumb_image: $thumb_image, vendor_id: $vendor_id, category_id: $category_id, sub_category_id: $sub_category_id, child_category_id: $child_category_id, brand_id: $brand_id, qty: $qty, weight: $weight, sold_qty: $sold_qty, short_description: $short_description, long_description: $long_description, video_link: $video_link, sku: $sku, seo_title: $seo_title, seo_description: $seo_description, price: $price, offer_price: $offer_price, tags: $tags, show_homepage: $show_homepage, is_undefine: $is_undefine, is_featured: $is_featured, new_product: $new_product, is_top: $is_top, is_best: $is_best, status: $status, is_specification: $is_specification, approve_by_admin: $approve_by_admin, is_bundle_product: $is_bundle_product, bundle_products: $bundle_products, bundle_product_offer_type: $bundle_product_offer_type, bundle_product_offer: $bundle_product_offer, created_at: $created_at, updated_at: $updated_at, averageRating: $averageRating, totalSold: $totalSold, active_variants: $active_variants)';
}


}

/// @nodoc
abstract mixin class $RelatedProductCopyWith<$Res>  {
  factory $RelatedProductCopyWith(RelatedProduct value, $Res Function(RelatedProduct) _then) = _$RelatedProductCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? short_name, String? slug, String? thumb_image, int? vendor_id, int? category_id, int? sub_category_id, int? child_category_id, int? brand_id, int? qty, String? weight, int? sold_qty, String? short_description, String? long_description, String? video_link, String? sku, String? seo_title, String? seo_description, num? price, num? offer_price, dynamic tags, int? show_homepage, int? is_undefine, int? is_featured, int? new_product, int? is_top, int? is_best, int? status, int? is_specification, int? approve_by_admin, String? is_bundle_product, String? bundle_products, String? bundle_product_offer_type, String? bundle_product_offer, String? created_at, String? updated_at, dynamic averageRating, dynamic totalSold, List<ActiveVariant>? active_variants
});




}
/// @nodoc
class _$RelatedProductCopyWithImpl<$Res>
    implements $RelatedProductCopyWith<$Res> {
  _$RelatedProductCopyWithImpl(this._self, this._then);

  final RelatedProduct _self;
  final $Res Function(RelatedProduct) _then;

/// Create a copy of RelatedProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? short_name = freezed,Object? slug = freezed,Object? thumb_image = freezed,Object? vendor_id = freezed,Object? category_id = freezed,Object? sub_category_id = freezed,Object? child_category_id = freezed,Object? brand_id = freezed,Object? qty = freezed,Object? weight = freezed,Object? sold_qty = freezed,Object? short_description = freezed,Object? long_description = freezed,Object? video_link = freezed,Object? sku = freezed,Object? seo_title = freezed,Object? seo_description = freezed,Object? price = freezed,Object? offer_price = freezed,Object? tags = freezed,Object? show_homepage = freezed,Object? is_undefine = freezed,Object? is_featured = freezed,Object? new_product = freezed,Object? is_top = freezed,Object? is_best = freezed,Object? status = freezed,Object? is_specification = freezed,Object? approve_by_admin = freezed,Object? is_bundle_product = freezed,Object? bundle_products = freezed,Object? bundle_product_offer_type = freezed,Object? bundle_product_offer = freezed,Object? created_at = freezed,Object? updated_at = freezed,Object? averageRating = freezed,Object? totalSold = freezed,Object? active_variants = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,short_name: freezed == short_name ? _self.short_name : short_name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,thumb_image: freezed == thumb_image ? _self.thumb_image : thumb_image // ignore: cast_nullable_to_non_nullable
as String?,vendor_id: freezed == vendor_id ? _self.vendor_id : vendor_id // ignore: cast_nullable_to_non_nullable
as int?,category_id: freezed == category_id ? _self.category_id : category_id // ignore: cast_nullable_to_non_nullable
as int?,sub_category_id: freezed == sub_category_id ? _self.sub_category_id : sub_category_id // ignore: cast_nullable_to_non_nullable
as int?,child_category_id: freezed == child_category_id ? _self.child_category_id : child_category_id // ignore: cast_nullable_to_non_nullable
as int?,brand_id: freezed == brand_id ? _self.brand_id : brand_id // ignore: cast_nullable_to_non_nullable
as int?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String?,sold_qty: freezed == sold_qty ? _self.sold_qty : sold_qty // ignore: cast_nullable_to_non_nullable
as int?,short_description: freezed == short_description ? _self.short_description : short_description // ignore: cast_nullable_to_non_nullable
as String?,long_description: freezed == long_description ? _self.long_description : long_description // ignore: cast_nullable_to_non_nullable
as String?,video_link: freezed == video_link ? _self.video_link : video_link // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,seo_title: freezed == seo_title ? _self.seo_title : seo_title // ignore: cast_nullable_to_non_nullable
as String?,seo_description: freezed == seo_description ? _self.seo_description : seo_description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,offer_price: freezed == offer_price ? _self.offer_price : offer_price // ignore: cast_nullable_to_non_nullable
as num?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as dynamic,show_homepage: freezed == show_homepage ? _self.show_homepage : show_homepage // ignore: cast_nullable_to_non_nullable
as int?,is_undefine: freezed == is_undefine ? _self.is_undefine : is_undefine // ignore: cast_nullable_to_non_nullable
as int?,is_featured: freezed == is_featured ? _self.is_featured : is_featured // ignore: cast_nullable_to_non_nullable
as int?,new_product: freezed == new_product ? _self.new_product : new_product // ignore: cast_nullable_to_non_nullable
as int?,is_top: freezed == is_top ? _self.is_top : is_top // ignore: cast_nullable_to_non_nullable
as int?,is_best: freezed == is_best ? _self.is_best : is_best // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,is_specification: freezed == is_specification ? _self.is_specification : is_specification // ignore: cast_nullable_to_non_nullable
as int?,approve_by_admin: freezed == approve_by_admin ? _self.approve_by_admin : approve_by_admin // ignore: cast_nullable_to_non_nullable
as int?,is_bundle_product: freezed == is_bundle_product ? _self.is_bundle_product : is_bundle_product // ignore: cast_nullable_to_non_nullable
as String?,bundle_products: freezed == bundle_products ? _self.bundle_products : bundle_products // ignore: cast_nullable_to_non_nullable
as String?,bundle_product_offer_type: freezed == bundle_product_offer_type ? _self.bundle_product_offer_type : bundle_product_offer_type // ignore: cast_nullable_to_non_nullable
as String?,bundle_product_offer: freezed == bundle_product_offer ? _self.bundle_product_offer : bundle_product_offer // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as dynamic,totalSold: freezed == totalSold ? _self.totalSold : totalSold // ignore: cast_nullable_to_non_nullable
as dynamic,active_variants: freezed == active_variants ? _self.active_variants : active_variants // ignore: cast_nullable_to_non_nullable
as List<ActiveVariant>?,
  ));
}

}


/// Adds pattern-matching-related methods to [RelatedProduct].
extension RelatedProductPatterns on RelatedProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RelatedProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RelatedProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RelatedProduct value)  $default,){
final _that = this;
switch (_that) {
case _RelatedProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RelatedProduct value)?  $default,){
final _that = this;
switch (_that) {
case _RelatedProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? short_name,  String? slug,  String? thumb_image,  int? vendor_id,  int? category_id,  int? sub_category_id,  int? child_category_id,  int? brand_id,  int? qty,  String? weight,  int? sold_qty,  String? short_description,  String? long_description,  String? video_link,  String? sku,  String? seo_title,  String? seo_description,  num? price,  num? offer_price,  dynamic tags,  int? show_homepage,  int? is_undefine,  int? is_featured,  int? new_product,  int? is_top,  int? is_best,  int? status,  int? is_specification,  int? approve_by_admin,  String? is_bundle_product,  String? bundle_products,  String? bundle_product_offer_type,  String? bundle_product_offer,  String? created_at,  String? updated_at,  dynamic averageRating,  dynamic totalSold,  List<ActiveVariant>? active_variants)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RelatedProduct() when $default != null:
return $default(_that.id,_that.name,_that.short_name,_that.slug,_that.thumb_image,_that.vendor_id,_that.category_id,_that.sub_category_id,_that.child_category_id,_that.brand_id,_that.qty,_that.weight,_that.sold_qty,_that.short_description,_that.long_description,_that.video_link,_that.sku,_that.seo_title,_that.seo_description,_that.price,_that.offer_price,_that.tags,_that.show_homepage,_that.is_undefine,_that.is_featured,_that.new_product,_that.is_top,_that.is_best,_that.status,_that.is_specification,_that.approve_by_admin,_that.is_bundle_product,_that.bundle_products,_that.bundle_product_offer_type,_that.bundle_product_offer,_that.created_at,_that.updated_at,_that.averageRating,_that.totalSold,_that.active_variants);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? short_name,  String? slug,  String? thumb_image,  int? vendor_id,  int? category_id,  int? sub_category_id,  int? child_category_id,  int? brand_id,  int? qty,  String? weight,  int? sold_qty,  String? short_description,  String? long_description,  String? video_link,  String? sku,  String? seo_title,  String? seo_description,  num? price,  num? offer_price,  dynamic tags,  int? show_homepage,  int? is_undefine,  int? is_featured,  int? new_product,  int? is_top,  int? is_best,  int? status,  int? is_specification,  int? approve_by_admin,  String? is_bundle_product,  String? bundle_products,  String? bundle_product_offer_type,  String? bundle_product_offer,  String? created_at,  String? updated_at,  dynamic averageRating,  dynamic totalSold,  List<ActiveVariant>? active_variants)  $default,) {final _that = this;
switch (_that) {
case _RelatedProduct():
return $default(_that.id,_that.name,_that.short_name,_that.slug,_that.thumb_image,_that.vendor_id,_that.category_id,_that.sub_category_id,_that.child_category_id,_that.brand_id,_that.qty,_that.weight,_that.sold_qty,_that.short_description,_that.long_description,_that.video_link,_that.sku,_that.seo_title,_that.seo_description,_that.price,_that.offer_price,_that.tags,_that.show_homepage,_that.is_undefine,_that.is_featured,_that.new_product,_that.is_top,_that.is_best,_that.status,_that.is_specification,_that.approve_by_admin,_that.is_bundle_product,_that.bundle_products,_that.bundle_product_offer_type,_that.bundle_product_offer,_that.created_at,_that.updated_at,_that.averageRating,_that.totalSold,_that.active_variants);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? short_name,  String? slug,  String? thumb_image,  int? vendor_id,  int? category_id,  int? sub_category_id,  int? child_category_id,  int? brand_id,  int? qty,  String? weight,  int? sold_qty,  String? short_description,  String? long_description,  String? video_link,  String? sku,  String? seo_title,  String? seo_description,  num? price,  num? offer_price,  dynamic tags,  int? show_homepage,  int? is_undefine,  int? is_featured,  int? new_product,  int? is_top,  int? is_best,  int? status,  int? is_specification,  int? approve_by_admin,  String? is_bundle_product,  String? bundle_products,  String? bundle_product_offer_type,  String? bundle_product_offer,  String? created_at,  String? updated_at,  dynamic averageRating,  dynamic totalSold,  List<ActiveVariant>? active_variants)?  $default,) {final _that = this;
switch (_that) {
case _RelatedProduct() when $default != null:
return $default(_that.id,_that.name,_that.short_name,_that.slug,_that.thumb_image,_that.vendor_id,_that.category_id,_that.sub_category_id,_that.child_category_id,_that.brand_id,_that.qty,_that.weight,_that.sold_qty,_that.short_description,_that.long_description,_that.video_link,_that.sku,_that.seo_title,_that.seo_description,_that.price,_that.offer_price,_that.tags,_that.show_homepage,_that.is_undefine,_that.is_featured,_that.new_product,_that.is_top,_that.is_best,_that.status,_that.is_specification,_that.approve_by_admin,_that.is_bundle_product,_that.bundle_products,_that.bundle_product_offer_type,_that.bundle_product_offer,_that.created_at,_that.updated_at,_that.averageRating,_that.totalSold,_that.active_variants);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RelatedProduct implements RelatedProduct {
  const _RelatedProduct({this.id, this.name, this.short_name, this.slug, this.thumb_image, this.vendor_id, this.category_id, this.sub_category_id, this.child_category_id, this.brand_id, this.qty, this.weight, this.sold_qty, this.short_description, this.long_description, this.video_link, this.sku, this.seo_title, this.seo_description, this.price, this.offer_price, this.tags, this.show_homepage, this.is_undefine, this.is_featured, this.new_product, this.is_top, this.is_best, this.status, this.is_specification, this.approve_by_admin, this.is_bundle_product, this.bundle_products, this.bundle_product_offer_type, this.bundle_product_offer, this.created_at, this.updated_at, this.averageRating, this.totalSold, final  List<ActiveVariant>? active_variants}): _active_variants = active_variants;
  factory _RelatedProduct.fromJson(Map<String, dynamic> json) => _$RelatedProductFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? short_name;
@override final  String? slug;
@override final  String? thumb_image;
@override final  int? vendor_id;
@override final  int? category_id;
@override final  int? sub_category_id;
@override final  int? child_category_id;
@override final  int? brand_id;
@override final  int? qty;
@override final  String? weight;
@override final  int? sold_qty;
@override final  String? short_description;
@override final  String? long_description;
@override final  String? video_link;
@override final  String? sku;
@override final  String? seo_title;
@override final  String? seo_description;
@override final  num? price;
@override final  num? offer_price;
@override final  dynamic tags;
@override final  int? show_homepage;
@override final  int? is_undefine;
@override final  int? is_featured;
@override final  int? new_product;
@override final  int? is_top;
@override final  int? is_best;
@override final  int? status;
@override final  int? is_specification;
@override final  int? approve_by_admin;
@override final  String? is_bundle_product;
@override final  String? bundle_products;
@override final  String? bundle_product_offer_type;
@override final  String? bundle_product_offer;
@override final  String? created_at;
@override final  String? updated_at;
@override final  dynamic averageRating;
@override final  dynamic totalSold;
 final  List<ActiveVariant>? _active_variants;
@override List<ActiveVariant>? get active_variants {
  final value = _active_variants;
  if (value == null) return null;
  if (_active_variants is EqualUnmodifiableListView) return _active_variants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of RelatedProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelatedProductCopyWith<_RelatedProduct> get copyWith => __$RelatedProductCopyWithImpl<_RelatedProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelatedProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RelatedProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.short_name, short_name) || other.short_name == short_name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.thumb_image, thumb_image) || other.thumb_image == thumb_image)&&(identical(other.vendor_id, vendor_id) || other.vendor_id == vendor_id)&&(identical(other.category_id, category_id) || other.category_id == category_id)&&(identical(other.sub_category_id, sub_category_id) || other.sub_category_id == sub_category_id)&&(identical(other.child_category_id, child_category_id) || other.child_category_id == child_category_id)&&(identical(other.brand_id, brand_id) || other.brand_id == brand_id)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.sold_qty, sold_qty) || other.sold_qty == sold_qty)&&(identical(other.short_description, short_description) || other.short_description == short_description)&&(identical(other.long_description, long_description) || other.long_description == long_description)&&(identical(other.video_link, video_link) || other.video_link == video_link)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.seo_title, seo_title) || other.seo_title == seo_title)&&(identical(other.seo_description, seo_description) || other.seo_description == seo_description)&&(identical(other.price, price) || other.price == price)&&(identical(other.offer_price, offer_price) || other.offer_price == offer_price)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.show_homepage, show_homepage) || other.show_homepage == show_homepage)&&(identical(other.is_undefine, is_undefine) || other.is_undefine == is_undefine)&&(identical(other.is_featured, is_featured) || other.is_featured == is_featured)&&(identical(other.new_product, new_product) || other.new_product == new_product)&&(identical(other.is_top, is_top) || other.is_top == is_top)&&(identical(other.is_best, is_best) || other.is_best == is_best)&&(identical(other.status, status) || other.status == status)&&(identical(other.is_specification, is_specification) || other.is_specification == is_specification)&&(identical(other.approve_by_admin, approve_by_admin) || other.approve_by_admin == approve_by_admin)&&(identical(other.is_bundle_product, is_bundle_product) || other.is_bundle_product == is_bundle_product)&&(identical(other.bundle_products, bundle_products) || other.bundle_products == bundle_products)&&(identical(other.bundle_product_offer_type, bundle_product_offer_type) || other.bundle_product_offer_type == bundle_product_offer_type)&&(identical(other.bundle_product_offer, bundle_product_offer) || other.bundle_product_offer == bundle_product_offer)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at)&&const DeepCollectionEquality().equals(other.averageRating, averageRating)&&const DeepCollectionEquality().equals(other.totalSold, totalSold)&&const DeepCollectionEquality().equals(other._active_variants, _active_variants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,short_name,slug,thumb_image,vendor_id,category_id,sub_category_id,child_category_id,brand_id,qty,weight,sold_qty,short_description,long_description,video_link,sku,seo_title,seo_description,price,offer_price,const DeepCollectionEquality().hash(tags),show_homepage,is_undefine,is_featured,new_product,is_top,is_best,status,is_specification,approve_by_admin,is_bundle_product,bundle_products,bundle_product_offer_type,bundle_product_offer,created_at,updated_at,const DeepCollectionEquality().hash(averageRating),const DeepCollectionEquality().hash(totalSold),const DeepCollectionEquality().hash(_active_variants)]);

@override
String toString() {
  return 'RelatedProduct(id: $id, name: $name, short_name: $short_name, slug: $slug, thumb_image: $thumb_image, vendor_id: $vendor_id, category_id: $category_id, sub_category_id: $sub_category_id, child_category_id: $child_category_id, brand_id: $brand_id, qty: $qty, weight: $weight, sold_qty: $sold_qty, short_description: $short_description, long_description: $long_description, video_link: $video_link, sku: $sku, seo_title: $seo_title, seo_description: $seo_description, price: $price, offer_price: $offer_price, tags: $tags, show_homepage: $show_homepage, is_undefine: $is_undefine, is_featured: $is_featured, new_product: $new_product, is_top: $is_top, is_best: $is_best, status: $status, is_specification: $is_specification, approve_by_admin: $approve_by_admin, is_bundle_product: $is_bundle_product, bundle_products: $bundle_products, bundle_product_offer_type: $bundle_product_offer_type, bundle_product_offer: $bundle_product_offer, created_at: $created_at, updated_at: $updated_at, averageRating: $averageRating, totalSold: $totalSold, active_variants: $active_variants)';
}


}

/// @nodoc
abstract mixin class _$RelatedProductCopyWith<$Res> implements $RelatedProductCopyWith<$Res> {
  factory _$RelatedProductCopyWith(_RelatedProduct value, $Res Function(_RelatedProduct) _then) = __$RelatedProductCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? short_name, String? slug, String? thumb_image, int? vendor_id, int? category_id, int? sub_category_id, int? child_category_id, int? brand_id, int? qty, String? weight, int? sold_qty, String? short_description, String? long_description, String? video_link, String? sku, String? seo_title, String? seo_description, num? price, num? offer_price, dynamic tags, int? show_homepage, int? is_undefine, int? is_featured, int? new_product, int? is_top, int? is_best, int? status, int? is_specification, int? approve_by_admin, String? is_bundle_product, String? bundle_products, String? bundle_product_offer_type, String? bundle_product_offer, String? created_at, String? updated_at, dynamic averageRating, dynamic totalSold, List<ActiveVariant>? active_variants
});




}
/// @nodoc
class __$RelatedProductCopyWithImpl<$Res>
    implements _$RelatedProductCopyWith<$Res> {
  __$RelatedProductCopyWithImpl(this._self, this._then);

  final _RelatedProduct _self;
  final $Res Function(_RelatedProduct) _then;

/// Create a copy of RelatedProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? short_name = freezed,Object? slug = freezed,Object? thumb_image = freezed,Object? vendor_id = freezed,Object? category_id = freezed,Object? sub_category_id = freezed,Object? child_category_id = freezed,Object? brand_id = freezed,Object? qty = freezed,Object? weight = freezed,Object? sold_qty = freezed,Object? short_description = freezed,Object? long_description = freezed,Object? video_link = freezed,Object? sku = freezed,Object? seo_title = freezed,Object? seo_description = freezed,Object? price = freezed,Object? offer_price = freezed,Object? tags = freezed,Object? show_homepage = freezed,Object? is_undefine = freezed,Object? is_featured = freezed,Object? new_product = freezed,Object? is_top = freezed,Object? is_best = freezed,Object? status = freezed,Object? is_specification = freezed,Object? approve_by_admin = freezed,Object? is_bundle_product = freezed,Object? bundle_products = freezed,Object? bundle_product_offer_type = freezed,Object? bundle_product_offer = freezed,Object? created_at = freezed,Object? updated_at = freezed,Object? averageRating = freezed,Object? totalSold = freezed,Object? active_variants = freezed,}) {
  return _then(_RelatedProduct(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,short_name: freezed == short_name ? _self.short_name : short_name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,thumb_image: freezed == thumb_image ? _self.thumb_image : thumb_image // ignore: cast_nullable_to_non_nullable
as String?,vendor_id: freezed == vendor_id ? _self.vendor_id : vendor_id // ignore: cast_nullable_to_non_nullable
as int?,category_id: freezed == category_id ? _self.category_id : category_id // ignore: cast_nullable_to_non_nullable
as int?,sub_category_id: freezed == sub_category_id ? _self.sub_category_id : sub_category_id // ignore: cast_nullable_to_non_nullable
as int?,child_category_id: freezed == child_category_id ? _self.child_category_id : child_category_id // ignore: cast_nullable_to_non_nullable
as int?,brand_id: freezed == brand_id ? _self.brand_id : brand_id // ignore: cast_nullable_to_non_nullable
as int?,qty: freezed == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String?,sold_qty: freezed == sold_qty ? _self.sold_qty : sold_qty // ignore: cast_nullable_to_non_nullable
as int?,short_description: freezed == short_description ? _self.short_description : short_description // ignore: cast_nullable_to_non_nullable
as String?,long_description: freezed == long_description ? _self.long_description : long_description // ignore: cast_nullable_to_non_nullable
as String?,video_link: freezed == video_link ? _self.video_link : video_link // ignore: cast_nullable_to_non_nullable
as String?,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,seo_title: freezed == seo_title ? _self.seo_title : seo_title // ignore: cast_nullable_to_non_nullable
as String?,seo_description: freezed == seo_description ? _self.seo_description : seo_description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as num?,offer_price: freezed == offer_price ? _self.offer_price : offer_price // ignore: cast_nullable_to_non_nullable
as num?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as dynamic,show_homepage: freezed == show_homepage ? _self.show_homepage : show_homepage // ignore: cast_nullable_to_non_nullable
as int?,is_undefine: freezed == is_undefine ? _self.is_undefine : is_undefine // ignore: cast_nullable_to_non_nullable
as int?,is_featured: freezed == is_featured ? _self.is_featured : is_featured // ignore: cast_nullable_to_non_nullable
as int?,new_product: freezed == new_product ? _self.new_product : new_product // ignore: cast_nullable_to_non_nullable
as int?,is_top: freezed == is_top ? _self.is_top : is_top // ignore: cast_nullable_to_non_nullable
as int?,is_best: freezed == is_best ? _self.is_best : is_best // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,is_specification: freezed == is_specification ? _self.is_specification : is_specification // ignore: cast_nullable_to_non_nullable
as int?,approve_by_admin: freezed == approve_by_admin ? _self.approve_by_admin : approve_by_admin // ignore: cast_nullable_to_non_nullable
as int?,is_bundle_product: freezed == is_bundle_product ? _self.is_bundle_product : is_bundle_product // ignore: cast_nullable_to_non_nullable
as String?,bundle_products: freezed == bundle_products ? _self.bundle_products : bundle_products // ignore: cast_nullable_to_non_nullable
as String?,bundle_product_offer_type: freezed == bundle_product_offer_type ? _self.bundle_product_offer_type : bundle_product_offer_type // ignore: cast_nullable_to_non_nullable
as String?,bundle_product_offer: freezed == bundle_product_offer ? _self.bundle_product_offer : bundle_product_offer // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as dynamic,totalSold: freezed == totalSold ? _self.totalSold : totalSold // ignore: cast_nullable_to_non_nullable
as dynamic,active_variants: freezed == active_variants ? _self._active_variants : active_variants // ignore: cast_nullable_to_non_nullable
as List<ActiveVariant>?,
  ));
}


}


/// @nodoc
mixin _$DefaultProfile {

 String? get image;
/// Create a copy of DefaultProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DefaultProfileCopyWith<DefaultProfile> get copyWith => _$DefaultProfileCopyWithImpl<DefaultProfile>(this as DefaultProfile, _$identity);

  /// Serializes this DefaultProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefaultProfile&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'DefaultProfile(image: $image)';
}


}

/// @nodoc
abstract mixin class $DefaultProfileCopyWith<$Res>  {
  factory $DefaultProfileCopyWith(DefaultProfile value, $Res Function(DefaultProfile) _then) = _$DefaultProfileCopyWithImpl;
@useResult
$Res call({
 String? image
});




}
/// @nodoc
class _$DefaultProfileCopyWithImpl<$Res>
    implements $DefaultProfileCopyWith<$Res> {
  _$DefaultProfileCopyWithImpl(this._self, this._then);

  final DefaultProfile _self;
  final $Res Function(DefaultProfile) _then;

/// Create a copy of DefaultProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? image = freezed,}) {
  return _then(_self.copyWith(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DefaultProfile].
extension DefaultProfilePatterns on DefaultProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DefaultProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DefaultProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DefaultProfile value)  $default,){
final _that = this;
switch (_that) {
case _DefaultProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DefaultProfile value)?  $default,){
final _that = this;
switch (_that) {
case _DefaultProfile() when $default != null:
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
case _DefaultProfile() when $default != null:
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
case _DefaultProfile():
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
case _DefaultProfile() when $default != null:
return $default(_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DefaultProfile implements DefaultProfile {
  const _DefaultProfile({this.image});
  factory _DefaultProfile.fromJson(Map<String, dynamic> json) => _$DefaultProfileFromJson(json);

@override final  String? image;

/// Create a copy of DefaultProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DefaultProfileCopyWith<_DefaultProfile> get copyWith => __$DefaultProfileCopyWithImpl<_DefaultProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DefaultProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DefaultProfile&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,image);

@override
String toString() {
  return 'DefaultProfile(image: $image)';
}


}

/// @nodoc
abstract mixin class _$DefaultProfileCopyWith<$Res> implements $DefaultProfileCopyWith<$Res> {
  factory _$DefaultProfileCopyWith(_DefaultProfile value, $Res Function(_DefaultProfile) _then) = __$DefaultProfileCopyWithImpl;
@override @useResult
$Res call({
 String? image
});




}
/// @nodoc
class __$DefaultProfileCopyWithImpl<$Res>
    implements _$DefaultProfileCopyWith<$Res> {
  __$DefaultProfileCopyWithImpl(this._self, this._then);

  final _DefaultProfile _self;
  final $Res Function(_DefaultProfile) _then;

/// Create a copy of DefaultProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? image = freezed,}) {
  return _then(_DefaultProfile(
image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RecaptchaSetting {

 int? get id; String? get site_key; String? get secret_key; int? get status; String? get created_at; String? get updated_at;
/// Create a copy of RecaptchaSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecaptchaSettingCopyWith<RecaptchaSetting> get copyWith => _$RecaptchaSettingCopyWithImpl<RecaptchaSetting>(this as RecaptchaSetting, _$identity);

  /// Serializes this RecaptchaSetting to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecaptchaSetting&&(identical(other.id, id) || other.id == id)&&(identical(other.site_key, site_key) || other.site_key == site_key)&&(identical(other.secret_key, secret_key) || other.secret_key == secret_key)&&(identical(other.status, status) || other.status == status)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,site_key,secret_key,status,created_at,updated_at);

@override
String toString() {
  return 'RecaptchaSetting(id: $id, site_key: $site_key, secret_key: $secret_key, status: $status, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class $RecaptchaSettingCopyWith<$Res>  {
  factory $RecaptchaSettingCopyWith(RecaptchaSetting value, $Res Function(RecaptchaSetting) _then) = _$RecaptchaSettingCopyWithImpl;
@useResult
$Res call({
 int? id, String? site_key, String? secret_key, int? status, String? created_at, String? updated_at
});




}
/// @nodoc
class _$RecaptchaSettingCopyWithImpl<$Res>
    implements $RecaptchaSettingCopyWith<$Res> {
  _$RecaptchaSettingCopyWithImpl(this._self, this._then);

  final RecaptchaSetting _self;
  final $Res Function(RecaptchaSetting) _then;

/// Create a copy of RecaptchaSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? site_key = freezed,Object? secret_key = freezed,Object? status = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,site_key: freezed == site_key ? _self.site_key : site_key // ignore: cast_nullable_to_non_nullable
as String?,secret_key: freezed == secret_key ? _self.secret_key : secret_key // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecaptchaSetting].
extension RecaptchaSettingPatterns on RecaptchaSetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecaptchaSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecaptchaSetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecaptchaSetting value)  $default,){
final _that = this;
switch (_that) {
case _RecaptchaSetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecaptchaSetting value)?  $default,){
final _that = this;
switch (_that) {
case _RecaptchaSetting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? site_key,  String? secret_key,  int? status,  String? created_at,  String? updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecaptchaSetting() when $default != null:
return $default(_that.id,_that.site_key,_that.secret_key,_that.status,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? site_key,  String? secret_key,  int? status,  String? created_at,  String? updated_at)  $default,) {final _that = this;
switch (_that) {
case _RecaptchaSetting():
return $default(_that.id,_that.site_key,_that.secret_key,_that.status,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? site_key,  String? secret_key,  int? status,  String? created_at,  String? updated_at)?  $default,) {final _that = this;
switch (_that) {
case _RecaptchaSetting() when $default != null:
return $default(_that.id,_that.site_key,_that.secret_key,_that.status,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecaptchaSetting implements RecaptchaSetting {
  const _RecaptchaSetting({this.id, this.site_key, this.secret_key, this.status, this.created_at, this.updated_at});
  factory _RecaptchaSetting.fromJson(Map<String, dynamic> json) => _$RecaptchaSettingFromJson(json);

@override final  int? id;
@override final  String? site_key;
@override final  String? secret_key;
@override final  int? status;
@override final  String? created_at;
@override final  String? updated_at;

/// Create a copy of RecaptchaSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecaptchaSettingCopyWith<_RecaptchaSetting> get copyWith => __$RecaptchaSettingCopyWithImpl<_RecaptchaSetting>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecaptchaSettingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecaptchaSetting&&(identical(other.id, id) || other.id == id)&&(identical(other.site_key, site_key) || other.site_key == site_key)&&(identical(other.secret_key, secret_key) || other.secret_key == secret_key)&&(identical(other.status, status) || other.status == status)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,site_key,secret_key,status,created_at,updated_at);

@override
String toString() {
  return 'RecaptchaSetting(id: $id, site_key: $site_key, secret_key: $secret_key, status: $status, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$RecaptchaSettingCopyWith<$Res> implements $RecaptchaSettingCopyWith<$Res> {
  factory _$RecaptchaSettingCopyWith(_RecaptchaSetting value, $Res Function(_RecaptchaSetting) _then) = __$RecaptchaSettingCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? site_key, String? secret_key, int? status, String? created_at, String? updated_at
});




}
/// @nodoc
class __$RecaptchaSettingCopyWithImpl<$Res>
    implements _$RecaptchaSettingCopyWith<$Res> {
  __$RecaptchaSettingCopyWithImpl(this._self, this._then);

  final _RecaptchaSetting _self;
  final $Res Function(_RecaptchaSetting) _then;

/// Create a copy of RecaptchaSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? site_key = freezed,Object? secret_key = freezed,Object? status = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_RecaptchaSetting(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,site_key: freezed == site_key ? _self.site_key : site_key // ignore: cast_nullable_to_non_nullable
as String?,secret_key: freezed == secret_key ? _self.secret_key : secret_key // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Seller {

 int? get id; int? get user_id; num? get total_amount; String? get banner_image; String? get logo; String? get phone; String? get email; String? get shop_name; String? get slug; String? get open_at; String? get closed_at; String? get address; String? get seo_title; String? get seo_description; int? get status; int? get is_featured; int? get top_rated; String? get verified_token; int? get is_verified; String? get greeting_msg; String? get created_at; String? get updated_at; String? get averageRating; SellerUser? get user;
/// Create a copy of Seller
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellerCopyWith<Seller> get copyWith => _$SellerCopyWithImpl<Seller>(this as Seller, _$identity);

  /// Serializes this Seller to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Seller&&(identical(other.id, id) || other.id == id)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.total_amount, total_amount) || other.total_amount == total_amount)&&(identical(other.banner_image, banner_image) || other.banner_image == banner_image)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.shop_name, shop_name) || other.shop_name == shop_name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.open_at, open_at) || other.open_at == open_at)&&(identical(other.closed_at, closed_at) || other.closed_at == closed_at)&&(identical(other.address, address) || other.address == address)&&(identical(other.seo_title, seo_title) || other.seo_title == seo_title)&&(identical(other.seo_description, seo_description) || other.seo_description == seo_description)&&(identical(other.status, status) || other.status == status)&&(identical(other.is_featured, is_featured) || other.is_featured == is_featured)&&(identical(other.top_rated, top_rated) || other.top_rated == top_rated)&&(identical(other.verified_token, verified_token) || other.verified_token == verified_token)&&(identical(other.is_verified, is_verified) || other.is_verified == is_verified)&&(identical(other.greeting_msg, greeting_msg) || other.greeting_msg == greeting_msg)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,user_id,total_amount,banner_image,logo,phone,email,shop_name,slug,open_at,closed_at,address,seo_title,seo_description,status,is_featured,top_rated,verified_token,is_verified,greeting_msg,created_at,updated_at,averageRating,user]);

@override
String toString() {
  return 'Seller(id: $id, user_id: $user_id, total_amount: $total_amount, banner_image: $banner_image, logo: $logo, phone: $phone, email: $email, shop_name: $shop_name, slug: $slug, open_at: $open_at, closed_at: $closed_at, address: $address, seo_title: $seo_title, seo_description: $seo_description, status: $status, is_featured: $is_featured, top_rated: $top_rated, verified_token: $verified_token, is_verified: $is_verified, greeting_msg: $greeting_msg, created_at: $created_at, updated_at: $updated_at, averageRating: $averageRating, user: $user)';
}


}

/// @nodoc
abstract mixin class $SellerCopyWith<$Res>  {
  factory $SellerCopyWith(Seller value, $Res Function(Seller) _then) = _$SellerCopyWithImpl;
@useResult
$Res call({
 int? id, int? user_id, num? total_amount, String? banner_image, String? logo, String? phone, String? email, String? shop_name, String? slug, String? open_at, String? closed_at, String? address, String? seo_title, String? seo_description, int? status, int? is_featured, int? top_rated, String? verified_token, int? is_verified, String? greeting_msg, String? created_at, String? updated_at, String? averageRating, SellerUser? user
});


$SellerUserCopyWith<$Res>? get user;

}
/// @nodoc
class _$SellerCopyWithImpl<$Res>
    implements $SellerCopyWith<$Res> {
  _$SellerCopyWithImpl(this._self, this._then);

  final Seller _self;
  final $Res Function(Seller) _then;

/// Create a copy of Seller
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? user_id = freezed,Object? total_amount = freezed,Object? banner_image = freezed,Object? logo = freezed,Object? phone = freezed,Object? email = freezed,Object? shop_name = freezed,Object? slug = freezed,Object? open_at = freezed,Object? closed_at = freezed,Object? address = freezed,Object? seo_title = freezed,Object? seo_description = freezed,Object? status = freezed,Object? is_featured = freezed,Object? top_rated = freezed,Object? verified_token = freezed,Object? is_verified = freezed,Object? greeting_msg = freezed,Object? created_at = freezed,Object? updated_at = freezed,Object? averageRating = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,user_id: freezed == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as int?,total_amount: freezed == total_amount ? _self.total_amount : total_amount // ignore: cast_nullable_to_non_nullable
as num?,banner_image: freezed == banner_image ? _self.banner_image : banner_image // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,shop_name: freezed == shop_name ? _self.shop_name : shop_name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,open_at: freezed == open_at ? _self.open_at : open_at // ignore: cast_nullable_to_non_nullable
as String?,closed_at: freezed == closed_at ? _self.closed_at : closed_at // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,seo_title: freezed == seo_title ? _self.seo_title : seo_title // ignore: cast_nullable_to_non_nullable
as String?,seo_description: freezed == seo_description ? _self.seo_description : seo_description // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,is_featured: freezed == is_featured ? _self.is_featured : is_featured // ignore: cast_nullable_to_non_nullable
as int?,top_rated: freezed == top_rated ? _self.top_rated : top_rated // ignore: cast_nullable_to_non_nullable
as int?,verified_token: freezed == verified_token ? _self.verified_token : verified_token // ignore: cast_nullable_to_non_nullable
as String?,is_verified: freezed == is_verified ? _self.is_verified : is_verified // ignore: cast_nullable_to_non_nullable
as int?,greeting_msg: freezed == greeting_msg ? _self.greeting_msg : greeting_msg // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as SellerUser?,
  ));
}
/// Create a copy of Seller
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $SellerUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [Seller].
extension SellerPatterns on Seller {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Seller value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Seller() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Seller value)  $default,){
final _that = this;
switch (_that) {
case _Seller():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Seller value)?  $default,){
final _that = this;
switch (_that) {
case _Seller() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? user_id,  num? total_amount,  String? banner_image,  String? logo,  String? phone,  String? email,  String? shop_name,  String? slug,  String? open_at,  String? closed_at,  String? address,  String? seo_title,  String? seo_description,  int? status,  int? is_featured,  int? top_rated,  String? verified_token,  int? is_verified,  String? greeting_msg,  String? created_at,  String? updated_at,  String? averageRating,  SellerUser? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Seller() when $default != null:
return $default(_that.id,_that.user_id,_that.total_amount,_that.banner_image,_that.logo,_that.phone,_that.email,_that.shop_name,_that.slug,_that.open_at,_that.closed_at,_that.address,_that.seo_title,_that.seo_description,_that.status,_that.is_featured,_that.top_rated,_that.verified_token,_that.is_verified,_that.greeting_msg,_that.created_at,_that.updated_at,_that.averageRating,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? user_id,  num? total_amount,  String? banner_image,  String? logo,  String? phone,  String? email,  String? shop_name,  String? slug,  String? open_at,  String? closed_at,  String? address,  String? seo_title,  String? seo_description,  int? status,  int? is_featured,  int? top_rated,  String? verified_token,  int? is_verified,  String? greeting_msg,  String? created_at,  String? updated_at,  String? averageRating,  SellerUser? user)  $default,) {final _that = this;
switch (_that) {
case _Seller():
return $default(_that.id,_that.user_id,_that.total_amount,_that.banner_image,_that.logo,_that.phone,_that.email,_that.shop_name,_that.slug,_that.open_at,_that.closed_at,_that.address,_that.seo_title,_that.seo_description,_that.status,_that.is_featured,_that.top_rated,_that.verified_token,_that.is_verified,_that.greeting_msg,_that.created_at,_that.updated_at,_that.averageRating,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? user_id,  num? total_amount,  String? banner_image,  String? logo,  String? phone,  String? email,  String? shop_name,  String? slug,  String? open_at,  String? closed_at,  String? address,  String? seo_title,  String? seo_description,  int? status,  int? is_featured,  int? top_rated,  String? verified_token,  int? is_verified,  String? greeting_msg,  String? created_at,  String? updated_at,  String? averageRating,  SellerUser? user)?  $default,) {final _that = this;
switch (_that) {
case _Seller() when $default != null:
return $default(_that.id,_that.user_id,_that.total_amount,_that.banner_image,_that.logo,_that.phone,_that.email,_that.shop_name,_that.slug,_that.open_at,_that.closed_at,_that.address,_that.seo_title,_that.seo_description,_that.status,_that.is_featured,_that.top_rated,_that.verified_token,_that.is_verified,_that.greeting_msg,_that.created_at,_that.updated_at,_that.averageRating,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Seller implements Seller {
  const _Seller({this.id, this.user_id, this.total_amount, this.banner_image, this.logo, this.phone, this.email, this.shop_name, this.slug, this.open_at, this.closed_at, this.address, this.seo_title, this.seo_description, this.status, this.is_featured, this.top_rated, this.verified_token, this.is_verified, this.greeting_msg, this.created_at, this.updated_at, this.averageRating, this.user});
  factory _Seller.fromJson(Map<String, dynamic> json) => _$SellerFromJson(json);

@override final  int? id;
@override final  int? user_id;
@override final  num? total_amount;
@override final  String? banner_image;
@override final  String? logo;
@override final  String? phone;
@override final  String? email;
@override final  String? shop_name;
@override final  String? slug;
@override final  String? open_at;
@override final  String? closed_at;
@override final  String? address;
@override final  String? seo_title;
@override final  String? seo_description;
@override final  int? status;
@override final  int? is_featured;
@override final  int? top_rated;
@override final  String? verified_token;
@override final  int? is_verified;
@override final  String? greeting_msg;
@override final  String? created_at;
@override final  String? updated_at;
@override final  String? averageRating;
@override final  SellerUser? user;

/// Create a copy of Seller
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellerCopyWith<_Seller> get copyWith => __$SellerCopyWithImpl<_Seller>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Seller&&(identical(other.id, id) || other.id == id)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.total_amount, total_amount) || other.total_amount == total_amount)&&(identical(other.banner_image, banner_image) || other.banner_image == banner_image)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.shop_name, shop_name) || other.shop_name == shop_name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.open_at, open_at) || other.open_at == open_at)&&(identical(other.closed_at, closed_at) || other.closed_at == closed_at)&&(identical(other.address, address) || other.address == address)&&(identical(other.seo_title, seo_title) || other.seo_title == seo_title)&&(identical(other.seo_description, seo_description) || other.seo_description == seo_description)&&(identical(other.status, status) || other.status == status)&&(identical(other.is_featured, is_featured) || other.is_featured == is_featured)&&(identical(other.top_rated, top_rated) || other.top_rated == top_rated)&&(identical(other.verified_token, verified_token) || other.verified_token == verified_token)&&(identical(other.is_verified, is_verified) || other.is_verified == is_verified)&&(identical(other.greeting_msg, greeting_msg) || other.greeting_msg == greeting_msg)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,user_id,total_amount,banner_image,logo,phone,email,shop_name,slug,open_at,closed_at,address,seo_title,seo_description,status,is_featured,top_rated,verified_token,is_verified,greeting_msg,created_at,updated_at,averageRating,user]);

@override
String toString() {
  return 'Seller(id: $id, user_id: $user_id, total_amount: $total_amount, banner_image: $banner_image, logo: $logo, phone: $phone, email: $email, shop_name: $shop_name, slug: $slug, open_at: $open_at, closed_at: $closed_at, address: $address, seo_title: $seo_title, seo_description: $seo_description, status: $status, is_featured: $is_featured, top_rated: $top_rated, verified_token: $verified_token, is_verified: $is_verified, greeting_msg: $greeting_msg, created_at: $created_at, updated_at: $updated_at, averageRating: $averageRating, user: $user)';
}


}

/// @nodoc
abstract mixin class _$SellerCopyWith<$Res> implements $SellerCopyWith<$Res> {
  factory _$SellerCopyWith(_Seller value, $Res Function(_Seller) _then) = __$SellerCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? user_id, num? total_amount, String? banner_image, String? logo, String? phone, String? email, String? shop_name, String? slug, String? open_at, String? closed_at, String? address, String? seo_title, String? seo_description, int? status, int? is_featured, int? top_rated, String? verified_token, int? is_verified, String? greeting_msg, String? created_at, String? updated_at, String? averageRating, SellerUser? user
});


@override $SellerUserCopyWith<$Res>? get user;

}
/// @nodoc
class __$SellerCopyWithImpl<$Res>
    implements _$SellerCopyWith<$Res> {
  __$SellerCopyWithImpl(this._self, this._then);

  final _Seller _self;
  final $Res Function(_Seller) _then;

/// Create a copy of Seller
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? user_id = freezed,Object? total_amount = freezed,Object? banner_image = freezed,Object? logo = freezed,Object? phone = freezed,Object? email = freezed,Object? shop_name = freezed,Object? slug = freezed,Object? open_at = freezed,Object? closed_at = freezed,Object? address = freezed,Object? seo_title = freezed,Object? seo_description = freezed,Object? status = freezed,Object? is_featured = freezed,Object? top_rated = freezed,Object? verified_token = freezed,Object? is_verified = freezed,Object? greeting_msg = freezed,Object? created_at = freezed,Object? updated_at = freezed,Object? averageRating = freezed,Object? user = freezed,}) {
  return _then(_Seller(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,user_id: freezed == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as int?,total_amount: freezed == total_amount ? _self.total_amount : total_amount // ignore: cast_nullable_to_non_nullable
as num?,banner_image: freezed == banner_image ? _self.banner_image : banner_image // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,shop_name: freezed == shop_name ? _self.shop_name : shop_name // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,open_at: freezed == open_at ? _self.open_at : open_at // ignore: cast_nullable_to_non_nullable
as String?,closed_at: freezed == closed_at ? _self.closed_at : closed_at // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,seo_title: freezed == seo_title ? _self.seo_title : seo_title // ignore: cast_nullable_to_non_nullable
as String?,seo_description: freezed == seo_description ? _self.seo_description : seo_description // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,is_featured: freezed == is_featured ? _self.is_featured : is_featured // ignore: cast_nullable_to_non_nullable
as int?,top_rated: freezed == top_rated ? _self.top_rated : top_rated // ignore: cast_nullable_to_non_nullable
as int?,verified_token: freezed == verified_token ? _self.verified_token : verified_token // ignore: cast_nullable_to_non_nullable
as String?,is_verified: freezed == is_verified ? _self.is_verified : is_verified // ignore: cast_nullable_to_non_nullable
as int?,greeting_msg: freezed == greeting_msg ? _self.greeting_msg : greeting_msg // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as SellerUser?,
  ));
}

/// Create a copy of Seller
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SellerUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $SellerUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$SellerUser {

 int? get id; String? get name; String? get email; String? get phone; String? get image; String? get address; int? get country_id; int? get state_id; int? get city_id; String? get zip_code;
/// Create a copy of SellerUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellerUserCopyWith<SellerUser> get copyWith => _$SellerUserCopyWithImpl<SellerUser>(this as SellerUser, _$identity);

  /// Serializes this SellerUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellerUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.image, image) || other.image == image)&&(identical(other.address, address) || other.address == address)&&(identical(other.country_id, country_id) || other.country_id == country_id)&&(identical(other.state_id, state_id) || other.state_id == state_id)&&(identical(other.city_id, city_id) || other.city_id == city_id)&&(identical(other.zip_code, zip_code) || other.zip_code == zip_code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,image,address,country_id,state_id,city_id,zip_code);

@override
String toString() {
  return 'SellerUser(id: $id, name: $name, email: $email, phone: $phone, image: $image, address: $address, country_id: $country_id, state_id: $state_id, city_id: $city_id, zip_code: $zip_code)';
}


}

/// @nodoc
abstract mixin class $SellerUserCopyWith<$Res>  {
  factory $SellerUserCopyWith(SellerUser value, $Res Function(SellerUser) _then) = _$SellerUserCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? email, String? phone, String? image, String? address, int? country_id, int? state_id, int? city_id, String? zip_code
});




}
/// @nodoc
class _$SellerUserCopyWithImpl<$Res>
    implements $SellerUserCopyWith<$Res> {
  _$SellerUserCopyWithImpl(this._self, this._then);

  final SellerUser _self;
  final $Res Function(SellerUser) _then;

/// Create a copy of SellerUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? image = freezed,Object? address = freezed,Object? country_id = freezed,Object? state_id = freezed,Object? city_id = freezed,Object? zip_code = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,country_id: freezed == country_id ? _self.country_id : country_id // ignore: cast_nullable_to_non_nullable
as int?,state_id: freezed == state_id ? _self.state_id : state_id // ignore: cast_nullable_to_non_nullable
as int?,city_id: freezed == city_id ? _self.city_id : city_id // ignore: cast_nullable_to_non_nullable
as int?,zip_code: freezed == zip_code ? _self.zip_code : zip_code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SellerUser].
extension SellerUserPatterns on SellerUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellerUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellerUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellerUser value)  $default,){
final _that = this;
switch (_that) {
case _SellerUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellerUser value)?  $default,){
final _that = this;
switch (_that) {
case _SellerUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? email,  String? phone,  String? image,  String? address,  int? country_id,  int? state_id,  int? city_id,  String? zip_code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellerUser() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.image,_that.address,_that.country_id,_that.state_id,_that.city_id,_that.zip_code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? email,  String? phone,  String? image,  String? address,  int? country_id,  int? state_id,  int? city_id,  String? zip_code)  $default,) {final _that = this;
switch (_that) {
case _SellerUser():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.image,_that.address,_that.country_id,_that.state_id,_that.city_id,_that.zip_code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? email,  String? phone,  String? image,  String? address,  int? country_id,  int? state_id,  int? city_id,  String? zip_code)?  $default,) {final _that = this;
switch (_that) {
case _SellerUser() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.image,_that.address,_that.country_id,_that.state_id,_that.city_id,_that.zip_code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellerUser implements SellerUser {
  const _SellerUser({this.id, this.name, this.email, this.phone, this.image, this.address, this.country_id, this.state_id, this.city_id, this.zip_code});
  factory _SellerUser.fromJson(Map<String, dynamic> json) => _$SellerUserFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? email;
@override final  String? phone;
@override final  String? image;
@override final  String? address;
@override final  int? country_id;
@override final  int? state_id;
@override final  int? city_id;
@override final  String? zip_code;

/// Create a copy of SellerUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellerUserCopyWith<_SellerUser> get copyWith => __$SellerUserCopyWithImpl<_SellerUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellerUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellerUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.image, image) || other.image == image)&&(identical(other.address, address) || other.address == address)&&(identical(other.country_id, country_id) || other.country_id == country_id)&&(identical(other.state_id, state_id) || other.state_id == state_id)&&(identical(other.city_id, city_id) || other.city_id == city_id)&&(identical(other.zip_code, zip_code) || other.zip_code == zip_code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,image,address,country_id,state_id,city_id,zip_code);

@override
String toString() {
  return 'SellerUser(id: $id, name: $name, email: $email, phone: $phone, image: $image, address: $address, country_id: $country_id, state_id: $state_id, city_id: $city_id, zip_code: $zip_code)';
}


}

/// @nodoc
abstract mixin class _$SellerUserCopyWith<$Res> implements $SellerUserCopyWith<$Res> {
  factory _$SellerUserCopyWith(_SellerUser value, $Res Function(_SellerUser) _then) = __$SellerUserCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? email, String? phone, String? image, String? address, int? country_id, int? state_id, int? city_id, String? zip_code
});




}
/// @nodoc
class __$SellerUserCopyWithImpl<$Res>
    implements _$SellerUserCopyWith<$Res> {
  __$SellerUserCopyWithImpl(this._self, this._then);

  final _SellerUser _self;
  final $Res Function(_SellerUser) _then;

/// Create a copy of SellerUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? image = freezed,Object? address = freezed,Object? country_id = freezed,Object? state_id = freezed,Object? city_id = freezed,Object? zip_code = freezed,}) {
  return _then(_SellerUser(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,country_id: freezed == country_id ? _self.country_id : country_id // ignore: cast_nullable_to_non_nullable
as int?,state_id: freezed == state_id ? _self.state_id : state_id // ignore: cast_nullable_to_non_nullable
as int?,city_id: freezed == city_id ? _self.city_id : city_id // ignore: cast_nullable_to_non_nullable
as int?,zip_code: freezed == zip_code ? _self.zip_code : zip_code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
