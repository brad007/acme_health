import 'package:acme_health/core/extensions/functional_extentions.dart';
import 'package:acme_health/domain/core/value_objects/number.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class NumberSerializer extends JsonConverter<Number, num> {
  const NumberSerializer();

  @override
  Number fromJson(num json) {
    return Number(json.toOption());
  }

  @override
  num toJson(Number object) {
    return object.safeValue;
  }
}
