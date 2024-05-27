import 'package:acme_health/domain/core/value_objects/errors.dart';
import 'package:acme_health/domain/core/value_objects/password.dart';
import 'package:acme_health/domain/core/value_objects/value_failure.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  T get safeValue;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold(
      (f) => throw UnexpectedValueError(f),
      (r) => r,
    );
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      left,
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  bool match(Password password) => getOrCrash() == password.getOrCrash();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
