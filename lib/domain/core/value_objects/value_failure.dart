import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.cannotBeNegative({
    required T failedValue,
  }) = CannotBeNegative<T>;

  const factory ValueFailure.outOfRange({
    required T failedValue,
    required T min,
    required T max,
  }) = OutOfRange<T>;

  const factory ValueFailure.cannotBeMoreThanMax({
    required T failedValue,
    required num max,
  }) = CannotBeMoreThanMax<T>;

  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.multiline({
    required T failedValue,
  }) = Multiline<T>;

  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.invalidGeoPoint({
    required T failedValue,
  }) = InvalidGeoPoint<T>;

  const factory ValueFailure.invalidPhoneNumber({
    required T failedValue,
  }) = InvalidPhoneNumber<T>;
}
