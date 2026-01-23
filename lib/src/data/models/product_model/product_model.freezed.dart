// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product {

 int get id; String get name; String get short_name; String get slug; String get thumb_image; int get qty; int get sold_qty; double get price; double? get offer_price; int get category_id; int get sub_category_id; int get child_category_id; int get brand_id; String get averageRating; dynamic get totalSold; List<Variant> get active_variants;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.short_name, short_name) || other.short_name == short_name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.thumb_image, thumb_image) || other.thumb_image == thumb_image)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.sold_qty, sold_qty) || other.sold_qty == sold_qty)&&(identical(other.price, price) || other.price == price)&&(identical(other.offer_price, offer_price) || other.offer_price == offer_price)&&(identical(other.category_id, category_id) || other.category_id == category_id)&&(identical(other.sub_category_id, sub_category_id) || other.sub_category_id == sub_category_id)&&(identical(other.child_category_id, child_category_id) || other.child_category_id == child_category_id)&&(identical(other.brand_id, brand_id) || other.brand_id == brand_id)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&const DeepCollectionEquality().equals(other.totalSold, totalSold)&&const DeepCollectionEquality().equals(other.active_variants, active_variants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,short_name,slug,thumb_image,qty,sold_qty,price,offer_price,category_id,sub_category_id,child_category_id,brand_id,averageRating,const DeepCollectionEquality().hash(totalSold),const DeepCollectionEquality().hash(active_variants));

@override
String toString() {
  return 'Product(id: $id, name: $name, short_name: $short_name, slug: $slug, thumb_image: $thumb_image, qty: $qty, sold_qty: $sold_qty, price: $price, offer_price: $offer_price, category_id: $category_id, sub_category_id: $sub_category_id, child_category_id: $child_category_id, brand_id: $brand_id, averageRating: $averageRating, totalSold: $totalSold, active_variants: $active_variants)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 int id, String name, String short_name, String slug, String thumb_image, int qty, int sold_qty, double price, double? offer_price, int category_id, int sub_category_id, int child_category_id, int brand_id, String averageRating, dynamic totalSold, List<Variant> active_variants
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? short_name = null,Object? slug = null,Object? thumb_image = null,Object? qty = null,Object? sold_qty = null,Object? price = null,Object? offer_price = freezed,Object? category_id = null,Object? sub_category_id = null,Object? child_category_id = null,Object? brand_id = null,Object? averageRating = null,Object? totalSold = freezed,Object? active_variants = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,short_name: null == short_name ? _self.short_name : short_name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,thumb_image: null == thumb_image ? _self.thumb_image : thumb_image // ignore: cast_nullable_to_non_nullable
as String,qty: null == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int,sold_qty: null == sold_qty ? _self.sold_qty : sold_qty // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,offer_price: freezed == offer_price ? _self.offer_price : offer_price // ignore: cast_nullable_to_non_nullable
as double?,category_id: null == category_id ? _self.category_id : category_id // ignore: cast_nullable_to_non_nullable
as int,sub_category_id: null == sub_category_id ? _self.sub_category_id : sub_category_id // ignore: cast_nullable_to_non_nullable
as int,child_category_id: null == child_category_id ? _self.child_category_id : child_category_id // ignore: cast_nullable_to_non_nullable
as int,brand_id: null == brand_id ? _self.brand_id : brand_id // ignore: cast_nullable_to_non_nullable
as int,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as String,totalSold: freezed == totalSold ? _self.totalSold : totalSold // ignore: cast_nullable_to_non_nullable
as dynamic,active_variants: null == active_variants ? _self.active_variants : active_variants // ignore: cast_nullable_to_non_nullable
as List<Variant>,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String short_name,  String slug,  String thumb_image,  int qty,  int sold_qty,  double price,  double? offer_price,  int category_id,  int sub_category_id,  int child_category_id,  int brand_id,  String averageRating,  dynamic totalSold,  List<Variant> active_variants)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.short_name,_that.slug,_that.thumb_image,_that.qty,_that.sold_qty,_that.price,_that.offer_price,_that.category_id,_that.sub_category_id,_that.child_category_id,_that.brand_id,_that.averageRating,_that.totalSold,_that.active_variants);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String short_name,  String slug,  String thumb_image,  int qty,  int sold_qty,  double price,  double? offer_price,  int category_id,  int sub_category_id,  int child_category_id,  int brand_id,  String averageRating,  dynamic totalSold,  List<Variant> active_variants)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.name,_that.short_name,_that.slug,_that.thumb_image,_that.qty,_that.sold_qty,_that.price,_that.offer_price,_that.category_id,_that.sub_category_id,_that.child_category_id,_that.brand_id,_that.averageRating,_that.totalSold,_that.active_variants);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String short_name,  String slug,  String thumb_image,  int qty,  int sold_qty,  double price,  double? offer_price,  int category_id,  int sub_category_id,  int child_category_id,  int brand_id,  String averageRating,  dynamic totalSold,  List<Variant> active_variants)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.short_name,_that.slug,_that.thumb_image,_that.qty,_that.sold_qty,_that.price,_that.offer_price,_that.category_id,_that.sub_category_id,_that.child_category_id,_that.brand_id,_that.averageRating,_that.totalSold,_that.active_variants);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({required this.id, required this.name, required this.short_name, required this.slug, required this.thumb_image, required this.qty, required this.sold_qty, required this.price, this.offer_price, required this.category_id, required this.sub_category_id, required this.child_category_id, required this.brand_id, required this.averageRating, this.totalSold, required final  List<Variant> active_variants}): _active_variants = active_variants;
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  int id;
@override final  String name;
@override final  String short_name;
@override final  String slug;
@override final  String thumb_image;
@override final  int qty;
@override final  int sold_qty;
@override final  double price;
@override final  double? offer_price;
@override final  int category_id;
@override final  int sub_category_id;
@override final  int child_category_id;
@override final  int brand_id;
@override final  String averageRating;
@override final  dynamic totalSold;
 final  List<Variant> _active_variants;
@override List<Variant> get active_variants {
  if (_active_variants is EqualUnmodifiableListView) return _active_variants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_active_variants);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.short_name, short_name) || other.short_name == short_name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.thumb_image, thumb_image) || other.thumb_image == thumb_image)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.sold_qty, sold_qty) || other.sold_qty == sold_qty)&&(identical(other.price, price) || other.price == price)&&(identical(other.offer_price, offer_price) || other.offer_price == offer_price)&&(identical(other.category_id, category_id) || other.category_id == category_id)&&(identical(other.sub_category_id, sub_category_id) || other.sub_category_id == sub_category_id)&&(identical(other.child_category_id, child_category_id) || other.child_category_id == child_category_id)&&(identical(other.brand_id, brand_id) || other.brand_id == brand_id)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating)&&const DeepCollectionEquality().equals(other.totalSold, totalSold)&&const DeepCollectionEquality().equals(other._active_variants, _active_variants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,short_name,slug,thumb_image,qty,sold_qty,price,offer_price,category_id,sub_category_id,child_category_id,brand_id,averageRating,const DeepCollectionEquality().hash(totalSold),const DeepCollectionEquality().hash(_active_variants));

@override
String toString() {
  return 'Product(id: $id, name: $name, short_name: $short_name, slug: $slug, thumb_image: $thumb_image, qty: $qty, sold_qty: $sold_qty, price: $price, offer_price: $offer_price, category_id: $category_id, sub_category_id: $sub_category_id, child_category_id: $child_category_id, brand_id: $brand_id, averageRating: $averageRating, totalSold: $totalSold, active_variants: $active_variants)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String short_name, String slug, String thumb_image, int qty, int sold_qty, double price, double? offer_price, int category_id, int sub_category_id, int child_category_id, int brand_id, String averageRating, dynamic totalSold, List<Variant> active_variants
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? short_name = null,Object? slug = null,Object? thumb_image = null,Object? qty = null,Object? sold_qty = null,Object? price = null,Object? offer_price = freezed,Object? category_id = null,Object? sub_category_id = null,Object? child_category_id = null,Object? brand_id = null,Object? averageRating = null,Object? totalSold = freezed,Object? active_variants = null,}) {
  return _then(_Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,short_name: null == short_name ? _self.short_name : short_name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,thumb_image: null == thumb_image ? _self.thumb_image : thumb_image // ignore: cast_nullable_to_non_nullable
as String,qty: null == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int,sold_qty: null == sold_qty ? _self.sold_qty : sold_qty // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,offer_price: freezed == offer_price ? _self.offer_price : offer_price // ignore: cast_nullable_to_non_nullable
as double?,category_id: null == category_id ? _self.category_id : category_id // ignore: cast_nullable_to_non_nullable
as int,sub_category_id: null == sub_category_id ? _self.sub_category_id : sub_category_id // ignore: cast_nullable_to_non_nullable
as int,child_category_id: null == child_category_id ? _self.child_category_id : child_category_id // ignore: cast_nullable_to_non_nullable
as int,brand_id: null == brand_id ? _self.brand_id : brand_id // ignore: cast_nullable_to_non_nullable
as int,averageRating: null == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as String,totalSold: freezed == totalSold ? _self.totalSold : totalSold // ignore: cast_nullable_to_non_nullable
as dynamic,active_variants: null == active_variants ? _self._active_variants : active_variants // ignore: cast_nullable_to_non_nullable
as List<Variant>,
  ));
}


}


/// @nodoc
mixin _$Variant {

 int get id; String get name; int get product_id; List<VariantItem> get active_variant_items;
/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantCopyWith<Variant> get copyWith => _$VariantCopyWithImpl<Variant>(this as Variant, _$identity);

  /// Serializes this Variant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Variant&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.product_id, product_id) || other.product_id == product_id)&&const DeepCollectionEquality().equals(other.active_variant_items, active_variant_items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,product_id,const DeepCollectionEquality().hash(active_variant_items));

@override
String toString() {
  return 'Variant(id: $id, name: $name, product_id: $product_id, active_variant_items: $active_variant_items)';
}


}

/// @nodoc
abstract mixin class $VariantCopyWith<$Res>  {
  factory $VariantCopyWith(Variant value, $Res Function(Variant) _then) = _$VariantCopyWithImpl;
@useResult
$Res call({
 int id, String name, int product_id, List<VariantItem> active_variant_items
});




}
/// @nodoc
class _$VariantCopyWithImpl<$Res>
    implements $VariantCopyWith<$Res> {
  _$VariantCopyWithImpl(this._self, this._then);

  final Variant _self;
  final $Res Function(Variant) _then;

/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? product_id = null,Object? active_variant_items = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,product_id: null == product_id ? _self.product_id : product_id // ignore: cast_nullable_to_non_nullable
as int,active_variant_items: null == active_variant_items ? _self.active_variant_items : active_variant_items // ignore: cast_nullable_to_non_nullable
as List<VariantItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [Variant].
extension VariantPatterns on Variant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Variant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Variant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Variant value)  $default,){
final _that = this;
switch (_that) {
case _Variant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Variant value)?  $default,){
final _that = this;
switch (_that) {
case _Variant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int product_id,  List<VariantItem> active_variant_items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Variant() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int product_id,  List<VariantItem> active_variant_items)  $default,) {final _that = this;
switch (_that) {
case _Variant():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int product_id,  List<VariantItem> active_variant_items)?  $default,) {final _that = this;
switch (_that) {
case _Variant() when $default != null:
return $default(_that.id,_that.name,_that.product_id,_that.active_variant_items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Variant implements Variant {
  const _Variant({required this.id, required this.name, required this.product_id, required final  List<VariantItem> active_variant_items}): _active_variant_items = active_variant_items;
  factory _Variant.fromJson(Map<String, dynamic> json) => _$VariantFromJson(json);

@override final  int id;
@override final  String name;
@override final  int product_id;
 final  List<VariantItem> _active_variant_items;
@override List<VariantItem> get active_variant_items {
  if (_active_variant_items is EqualUnmodifiableListView) return _active_variant_items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_active_variant_items);
}


/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariantCopyWith<_Variant> get copyWith => __$VariantCopyWithImpl<_Variant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariantToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Variant&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.product_id, product_id) || other.product_id == product_id)&&const DeepCollectionEquality().equals(other._active_variant_items, _active_variant_items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,product_id,const DeepCollectionEquality().hash(_active_variant_items));

@override
String toString() {
  return 'Variant(id: $id, name: $name, product_id: $product_id, active_variant_items: $active_variant_items)';
}


}

/// @nodoc
abstract mixin class _$VariantCopyWith<$Res> implements $VariantCopyWith<$Res> {
  factory _$VariantCopyWith(_Variant value, $Res Function(_Variant) _then) = __$VariantCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int product_id, List<VariantItem> active_variant_items
});




}
/// @nodoc
class __$VariantCopyWithImpl<$Res>
    implements _$VariantCopyWith<$Res> {
  __$VariantCopyWithImpl(this._self, this._then);

  final _Variant _self;
  final $Res Function(_Variant) _then;

/// Create a copy of Variant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? product_id = null,Object? active_variant_items = null,}) {
  return _then(_Variant(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,product_id: null == product_id ? _self.product_id : product_id // ignore: cast_nullable_to_non_nullable
as int,active_variant_items: null == active_variant_items ? _self._active_variant_items : active_variant_items // ignore: cast_nullable_to_non_nullable
as List<VariantItem>,
  ));
}


}


/// @nodoc
mixin _$VariantItem {

 int get id; int get product_variant_id; String get name; int get price;
/// Create a copy of VariantItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VariantItemCopyWith<VariantItem> get copyWith => _$VariantItemCopyWithImpl<VariantItem>(this as VariantItem, _$identity);

  /// Serializes this VariantItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VariantItem&&(identical(other.id, id) || other.id == id)&&(identical(other.product_variant_id, product_variant_id) || other.product_variant_id == product_variant_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,product_variant_id,name,price);

@override
String toString() {
  return 'VariantItem(id: $id, product_variant_id: $product_variant_id, name: $name, price: $price)';
}


}

/// @nodoc
abstract mixin class $VariantItemCopyWith<$Res>  {
  factory $VariantItemCopyWith(VariantItem value, $Res Function(VariantItem) _then) = _$VariantItemCopyWithImpl;
@useResult
$Res call({
 int id, int product_variant_id, String name, int price
});




}
/// @nodoc
class _$VariantItemCopyWithImpl<$Res>
    implements $VariantItemCopyWith<$Res> {
  _$VariantItemCopyWithImpl(this._self, this._then);

  final VariantItem _self;
  final $Res Function(VariantItem) _then;

/// Create a copy of VariantItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? product_variant_id = null,Object? name = null,Object? price = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,product_variant_id: null == product_variant_id ? _self.product_variant_id : product_variant_id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [VariantItem].
extension VariantItemPatterns on VariantItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VariantItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VariantItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VariantItem value)  $default,){
final _that = this;
switch (_that) {
case _VariantItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VariantItem value)?  $default,){
final _that = this;
switch (_that) {
case _VariantItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int product_variant_id,  String name,  int price)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VariantItem() when $default != null:
return $default(_that.id,_that.product_variant_id,_that.name,_that.price);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int product_variant_id,  String name,  int price)  $default,) {final _that = this;
switch (_that) {
case _VariantItem():
return $default(_that.id,_that.product_variant_id,_that.name,_that.price);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int product_variant_id,  String name,  int price)?  $default,) {final _that = this;
switch (_that) {
case _VariantItem() when $default != null:
return $default(_that.id,_that.product_variant_id,_that.name,_that.price);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VariantItem implements VariantItem {
  const _VariantItem({required this.id, required this.product_variant_id, required this.name, required this.price});
  factory _VariantItem.fromJson(Map<String, dynamic> json) => _$VariantItemFromJson(json);

@override final  int id;
@override final  int product_variant_id;
@override final  String name;
@override final  int price;

/// Create a copy of VariantItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VariantItemCopyWith<_VariantItem> get copyWith => __$VariantItemCopyWithImpl<_VariantItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VariantItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VariantItem&&(identical(other.id, id) || other.id == id)&&(identical(other.product_variant_id, product_variant_id) || other.product_variant_id == product_variant_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,product_variant_id,name,price);

@override
String toString() {
  return 'VariantItem(id: $id, product_variant_id: $product_variant_id, name: $name, price: $price)';
}


}

/// @nodoc
abstract mixin class _$VariantItemCopyWith<$Res> implements $VariantItemCopyWith<$Res> {
  factory _$VariantItemCopyWith(_VariantItem value, $Res Function(_VariantItem) _then) = __$VariantItemCopyWithImpl;
@override @useResult
$Res call({
 int id, int product_variant_id, String name, int price
});




}
/// @nodoc
class __$VariantItemCopyWithImpl<$Res>
    implements _$VariantItemCopyWith<$Res> {
  __$VariantItemCopyWithImpl(this._self, this._then);

  final _VariantItem _self;
  final $Res Function(_VariantItem) _then;

/// Create a copy of VariantItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? product_variant_id = null,Object? name = null,Object? price = null,}) {
  return _then(_VariantItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,product_variant_id: null == product_variant_id ? _self.product_variant_id : product_variant_id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
