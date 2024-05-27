import 'package:acme_health/domain/core/value_objects/value_failure.dart';
import 'package:email_validator/email_validator.dart';
import 'package:fpdart/fpdart.dart';

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (EmailValidator.validate(input.trim())) {
    return right(input.trim());
  } else if (input.isEmpty) {
    return left(
      const ValueFailure.empty(failedValue: 'Email cannot be empty'),
    );
  } else {
    return left(
      const ValueFailure.invalidEmail(
        failedValue: 'Incorrect. Please check your email.',
      ),
    );
  }
}

Either<ValueFailure<num>, num> validateDeposit({
  required num deposit,
  required num maxDeposit,
}) {
  if (deposit < 0) {
    return left(
      ValueFailure.cannotBeNegative(failedValue: deposit),
    );
  } else if (deposit <= maxDeposit) {
    return right(deposit);
  } else {
    return left(
      ValueFailure.cannotBeMoreThanMax(
        failedValue: deposit,
        max: maxDeposit,
      ),
    );
  }
}

Either<ValueFailure<num>, num> validateNumber(num number) {
  if (number < 0) {
    return left(
      ValueFailure.cannotBeNegative(failedValue: number),
    );
  } else {
    return right(number);
  }
}

Either<ValueFailure<num>, num> validateRate(num rate) {
  if (rate < 0 || rate > 100) {
    return left(
      ValueFailure.outOfRange(
        failedValue: rate,
        min: 0,
        max: 100,
      ),
    );
  } else {
    return right(rate);
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 8) {
    return right(input);
  } else if (input.isEmpty) {
    return left(
      const ValueFailure.empty(failedValue: 'Password cannot be empty'),
    );
  } else {
    return left(
      const ValueFailure.shortPassword(failedValue: 'Password is to short'),
    );
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(
  String phoneNumber,
) {
  if (phoneNumber.length == 10) {
    return right(phoneNumber);
  } else {
    return left(
      const ValueFailure.invalidPhoneNumber(
        failedValue: 'Invalid phone number',
      ),
    );
  }
}
