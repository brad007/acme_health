import 'package:acme_health/domain/core/value_objects/value_failure.dart';
import 'package:acme_health/domain/core/value_objects/value_object.dart';
import 'package:acme_health/domain/core/value_objects/value_validators.dart';
import 'package:fpdart/fpdart.dart';

class ValueString extends ValueObject<String> {
  factory ValueString() {
    return ValueString._(right(''));
  }

  factory ValueString.fromString(Option<String> input) {
    return input.fold(
      () => ValueString._(left(const ValueFailure.empty(failedValue: ''))),
      (a) => ValueString._(validateStringNotEmpty(a)),
    );
  }

  factory ValueString.fromStringIgnoreEmpty(Option<String> input) {
    return input.fold(
      () => ValueString._(left(const ValueFailure.empty(failedValue: ''))),
      (a) => ValueString._(right(a)),
    );
  }

  const ValueString._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  @override
  String get safeValue => value.fold((l) => '', (r) => r);
}
