import 'package:acme_health/domain/core/value_objects/value_string.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ValueStringSerializer extends JsonConverter<ValueString, String> {
  const ValueStringSerializer();

  @override
  ValueString fromJson(String json) {
    return ValueString.fromString(optionOf(json));
  }

  @override
  String toJson(ValueString object) {
    return object.safeValue;
  }
}
