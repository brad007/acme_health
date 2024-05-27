import 'package:acme_health/domain/core/value_objects/value_failure.dart';
import 'package:acme_health/domain/core/value_objects/value_object.dart';
import 'package:acme_health/domain/core/value_objects/value_validators.dart';
import 'package:fpdart/fpdart.dart';

class Password extends ValueObject<String> {
  factory Password(Option<String> input) {
    return input.fold(
      () => Password._(left(const ValueFailure.empty(failedValue: ''))),
      (a) => Password._(validatePassword(a)),
    );
  }

  const Password._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  @override
  String get safeValue => value.fold((l) => '', (r) => r);
}
