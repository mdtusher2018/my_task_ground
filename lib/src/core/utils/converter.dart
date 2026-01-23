import 'package:freezed_annotation/freezed_annotation.dart';

class NumConverter implements JsonConverter<num?, dynamic> {
  const NumConverter();

  @override
  num? fromJson(dynamic json) {
    if (json == null) return null;
    if (json is num) return json;
    if (json is String) return num.tryParse(json);
    return null;
  }

  @override
  dynamic toJson(num? object) => object;
}
