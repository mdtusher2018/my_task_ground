// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SigninResponse {

 String get status; int get statusCode; String get message; DataModel get data; List<dynamic> get errors;
/// Create a copy of SigninResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SigninResponseCopyWith<SigninResponse> get copyWith => _$SigninResponseCopyWithImpl<SigninResponse>(this as SigninResponse, _$identity);

  /// Serializes this SigninResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SigninResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,statusCode,message,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'SigninResponse(status: $status, statusCode: $statusCode, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $SigninResponseCopyWith<$Res>  {
  factory $SigninResponseCopyWith(SigninResponse value, $Res Function(SigninResponse) _then) = _$SigninResponseCopyWithImpl;
@useResult
$Res call({
 String status, int statusCode, String message, DataModel data, List<dynamic> errors
});


$DataModelCopyWith<$Res> get data;

}
/// @nodoc
class _$SigninResponseCopyWithImpl<$Res>
    implements $SigninResponseCopyWith<$Res> {
  _$SigninResponseCopyWithImpl(this._self, this._then);

  final SigninResponse _self;
  final $Res Function(SigninResponse) _then;

/// Create a copy of SigninResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? statusCode = null,Object? message = null,Object? data = null,Object? errors = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DataModel,errors: null == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}
/// Create a copy of SigninResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataModelCopyWith<$Res> get data {
  
  return $DataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SigninResponse].
extension SigninResponsePatterns on SigninResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SigninResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SigninResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SigninResponse value)  $default,){
final _that = this;
switch (_that) {
case _SigninResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SigninResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SigninResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  int statusCode,  String message,  DataModel data,  List<dynamic> errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SigninResponse() when $default != null:
return $default(_that.status,_that.statusCode,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  int statusCode,  String message,  DataModel data,  List<dynamic> errors)  $default,) {final _that = this;
switch (_that) {
case _SigninResponse():
return $default(_that.status,_that.statusCode,_that.message,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  int statusCode,  String message,  DataModel data,  List<dynamic> errors)?  $default,) {final _that = this;
switch (_that) {
case _SigninResponse() when $default != null:
return $default(_that.status,_that.statusCode,_that.message,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SigninResponse implements SigninResponse {
  const _SigninResponse({required this.status, required this.statusCode, required this.message, required this.data, required final  List<dynamic> errors}): _errors = errors;
  factory _SigninResponse.fromJson(Map<String, dynamic> json) => _$SigninResponseFromJson(json);

@override final  String status;
@override final  int statusCode;
@override final  String message;
@override final  DataModel data;
 final  List<dynamic> _errors;
@override List<dynamic> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


/// Create a copy of SigninResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SigninResponseCopyWith<_SigninResponse> get copyWith => __$SigninResponseCopyWithImpl<_SigninResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SigninResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SigninResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,statusCode,message,data,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'SigninResponse(status: $status, statusCode: $statusCode, message: $message, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$SigninResponseCopyWith<$Res> implements $SigninResponseCopyWith<$Res> {
  factory _$SigninResponseCopyWith(_SigninResponse value, $Res Function(_SigninResponse) _then) = __$SigninResponseCopyWithImpl;
@override @useResult
$Res call({
 String status, int statusCode, String message, DataModel data, List<dynamic> errors
});


@override $DataModelCopyWith<$Res> get data;

}
/// @nodoc
class __$SigninResponseCopyWithImpl<$Res>
    implements _$SigninResponseCopyWith<$Res> {
  __$SigninResponseCopyWithImpl(this._self, this._then);

  final _SigninResponse _self;
  final $Res Function(_SigninResponse) _then;

/// Create a copy of SigninResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? statusCode = null,Object? message = null,Object? data = null,Object? errors = null,}) {
  return _then(_SigninResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DataModel,errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

/// Create a copy of SigninResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataModelCopyWith<$Res> get data {
  
  return $DataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$DataModel {

 String? get type; UserModel get user; String get accessToken;
/// Create a copy of DataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataModelCopyWith<DataModel> get copyWith => _$DataModelCopyWithImpl<DataModel>(this as DataModel, _$identity);

  /// Serializes this DataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataModel&&(identical(other.type, type) || other.type == type)&&(identical(other.user, user) || other.user == user)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,user,accessToken);

@override
String toString() {
  return 'DataModel(type: $type, user: $user, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class $DataModelCopyWith<$Res>  {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) _then) = _$DataModelCopyWithImpl;
@useResult
$Res call({
 String? type, UserModel user, String accessToken
});


$UserModelCopyWith<$Res> get user;

}
/// @nodoc
class _$DataModelCopyWithImpl<$Res>
    implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._self, this._then);

  final DataModel _self;
  final $Res Function(DataModel) _then;

/// Create a copy of DataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? user = null,Object? accessToken = null,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of DataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [DataModel].
extension DataModelPatterns on DataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DataModel value)  $default,){
final _that = this;
switch (_that) {
case _DataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DataModel value)?  $default,){
final _that = this;
switch (_that) {
case _DataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? type,  UserModel user,  String accessToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DataModel() when $default != null:
return $default(_that.type,_that.user,_that.accessToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? type,  UserModel user,  String accessToken)  $default,) {final _that = this;
switch (_that) {
case _DataModel():
return $default(_that.type,_that.user,_that.accessToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? type,  UserModel user,  String accessToken)?  $default,) {final _that = this;
switch (_that) {
case _DataModel() when $default != null:
return $default(_that.type,_that.user,_that.accessToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DataModel implements DataModel {
  const _DataModel({required this.type, required this.user, required this.accessToken});
  factory _DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);

@override final  String? type;
@override final  UserModel user;
@override final  String accessToken;

/// Create a copy of DataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataModelCopyWith<_DataModel> get copyWith => __$DataModelCopyWithImpl<_DataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataModel&&(identical(other.type, type) || other.type == type)&&(identical(other.user, user) || other.user == user)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,user,accessToken);

@override
String toString() {
  return 'DataModel(type: $type, user: $user, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class _$DataModelCopyWith<$Res> implements $DataModelCopyWith<$Res> {
  factory _$DataModelCopyWith(_DataModel value, $Res Function(_DataModel) _then) = __$DataModelCopyWithImpl;
@override @useResult
$Res call({
 String? type, UserModel user, String accessToken
});


@override $UserModelCopyWith<$Res> get user;

}
/// @nodoc
class __$DataModelCopyWithImpl<$Res>
    implements _$DataModelCopyWith<$Res> {
  __$DataModelCopyWithImpl(this._self, this._then);

  final _DataModel _self;
  final $Res Function(_DataModel) _then;

/// Create a copy of DataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? user = null,Object? accessToken = null,}) {
  return _then(_DataModel(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of DataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$UserModel {

 String get fullName; String get email;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,email);

@override
String toString() {
  return 'UserModel(fullName: $fullName, email: $email)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 String fullName, String email
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,Object? email = null,}) {
  return _then(_self.copyWith(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String fullName,  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.fullName,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String fullName,  String email)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.fullName,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String fullName,  String email)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.fullName,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({required this.fullName, required this.email});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  String fullName;
@override final  String email;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,email);

@override
String toString() {
  return 'UserModel(fullName: $fullName, email: $email)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String fullName, String email
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? email = null,}) {
  return _then(_UserModel(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
