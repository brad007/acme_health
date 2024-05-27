import 'package:acme_health/domain/core/value_objects/value_failure.dart';
import 'package:acme_health/domain/core/value_objects/value_object.dart';
import 'package:acme_health/domain/core/value_objects/value_validators.dart';
import 'package:fpdart/fpdart.dart';

// ignore: must_be_immutable
class Number extends ValueObject<num> {
  factory Number(Option<num> input) {
    return input.fold(
      () => Number._(
        Either.left(const ValueFailure.cannotBeNegative(failedValue: 0)),
      ),
      (a) => Number._(
        validateNumber(a),
      ),
    );
  }

  Number._(this.value);

  @override
  Either<ValueFailure<num>, num> value;

  @override
  num get safeValue => value.fold((l) => 0, (r) => r);
}
