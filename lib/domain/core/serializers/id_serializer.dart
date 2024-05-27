import 'package:acme_health/domain/core/value_objects/unique_id.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class IDSerializer extends JsonConverter<UniqueID, String> {
  const IDSerializer();

  @override
  UniqueID fromJson(String json) {
    return UniqueID.fromUniqueString(optionOf(json));
  }

  @override
  String toJson(UniqueID object) {
    return object.safeValue;
  }
}
