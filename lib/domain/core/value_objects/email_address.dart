import 'package:acme_health/domain/core/value_objects/value_failure.dart';
import 'package:acme_health/domain/core/value_objects/value_object.dart';
import 'package:acme_health/domain/core/value_objects/value_validators.dart';
import 'package:fpdart/fpdart.dart';

class EmailAddress extends ValueObject<String> {
  factory EmailAddress(Option<String> input) {
    return input.fold(
      () => EmailAddress._(left(const ValueFailure.empty(failedValue: ''))),
      (a) => EmailAddress._(validateEmailAddress(a)),
    );
  }

  const EmailAddress._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  @override
  String get safeValue => value.fold((l) => '', (r) => r);
}
