import 'package:acme_health/domain/core/value_objects/value_failure.dart';

class NotAuthenticatedError extends Error {
  NotAuthenticatedError() : message = 'User is not authenticated';
  final String message;
}

class UnexpectedValueError<T> extends Error {
  UnexpectedValueError(this.valueFailure);

  final ValueFailure<T> valueFailure;

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
