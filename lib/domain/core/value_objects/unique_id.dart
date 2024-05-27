import 'package:acme_health/domain/core/value_objects/value_failure.dart';
import 'package:acme_health/domain/core/value_objects/value_object.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

class UniqueID extends ValueObject<String> {
  factory UniqueID() {
    return UniqueID._(
      right(const Uuid().v1()),
    );
  }

  factory UniqueID.fromUniqueString(Option<String> input) {
    return input.fold(
      () => UniqueID._(left(const ValueFailure.empty(failedValue: ''))),
      (a) => UniqueID._(right(a)),
    );
  }

  const UniqueID._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;

  @override
  String get safeValue => value.fold((l) => '', (r) => r);
}
