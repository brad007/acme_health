// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cannotBeNegative,
    required TResult Function(T failedValue, T min, T max) outOfRange,
    required TResult Function(T failedValue, num max) cannotBeMoreThanMax,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidGeoPoint,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cannotBeNegative,
    TResult? Function(T failedValue, T min, T max)? outOfRange,
    TResult? Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidGeoPoint,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cannotBeNegative,
    TResult Function(T failedValue, T min, T max)? outOfRange,
    TResult Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidGeoPoint,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CannotBeNegative<T> value) cannotBeNegative,
    required TResult Function(OutOfRange<T> value) outOfRange,
    required TResult Function(CannotBeMoreThanMax<T> value) cannotBeMoreThanMax,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidGeoPoint<T> value) invalidGeoPoint,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult? Function(OutOfRange<T> value)? outOfRange,
    TResult? Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult? Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult Function(OutOfRange<T> value)? outOfRange,
    TResult Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CannotBeNegativeImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$CannotBeNegativeImplCopyWith(_$CannotBeNegativeImpl<T> value,
          $Res Function(_$CannotBeNegativeImpl<T>) then) =
      __$$CannotBeNegativeImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$CannotBeNegativeImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$CannotBeNegativeImpl<T>>
    implements _$$CannotBeNegativeImplCopyWith<T, $Res> {
  __$$CannotBeNegativeImplCopyWithImpl(_$CannotBeNegativeImpl<T> _value,
      $Res Function(_$CannotBeNegativeImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$CannotBeNegativeImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CannotBeNegativeImpl<T> implements CannotBeNegative<T> {
  const _$CannotBeNegativeImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.cannotBeNegative(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CannotBeNegativeImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CannotBeNegativeImplCopyWith<T, _$CannotBeNegativeImpl<T>> get copyWith =>
      __$$CannotBeNegativeImplCopyWithImpl<T, _$CannotBeNegativeImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cannotBeNegative,
    required TResult Function(T failedValue, T min, T max) outOfRange,
    required TResult Function(T failedValue, num max) cannotBeMoreThanMax,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidGeoPoint,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return cannotBeNegative(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cannotBeNegative,
    TResult? Function(T failedValue, T min, T max)? outOfRange,
    TResult? Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidGeoPoint,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return cannotBeNegative?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cannotBeNegative,
    TResult Function(T failedValue, T min, T max)? outOfRange,
    TResult Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidGeoPoint,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (cannotBeNegative != null) {
      return cannotBeNegative(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CannotBeNegative<T> value) cannotBeNegative,
    required TResult Function(OutOfRange<T> value) outOfRange,
    required TResult Function(CannotBeMoreThanMax<T> value) cannotBeMoreThanMax,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidGeoPoint<T> value) invalidGeoPoint,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return cannotBeNegative(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult? Function(OutOfRange<T> value)? outOfRange,
    TResult? Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult? Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return cannotBeNegative?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult Function(OutOfRange<T> value)? outOfRange,
    TResult Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (cannotBeNegative != null) {
      return cannotBeNegative(this);
    }
    return orElse();
  }
}

abstract class CannotBeNegative<T> implements ValueFailure<T> {
  const factory CannotBeNegative({required final T failedValue}) =
      _$CannotBeNegativeImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$CannotBeNegativeImplCopyWith<T, _$CannotBeNegativeImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OutOfRangeImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$OutOfRangeImplCopyWith(
          _$OutOfRangeImpl<T> value, $Res Function(_$OutOfRangeImpl<T>) then) =
      __$$OutOfRangeImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, T min, T max});
}

/// @nodoc
class __$$OutOfRangeImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$OutOfRangeImpl<T>>
    implements _$$OutOfRangeImplCopyWith<T, $Res> {
  __$$OutOfRangeImplCopyWithImpl(
      _$OutOfRangeImpl<T> _value, $Res Function(_$OutOfRangeImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_$OutOfRangeImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as T,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$OutOfRangeImpl<T> implements OutOfRange<T> {
  const _$OutOfRangeImpl(
      {required this.failedValue, required this.min, required this.max});

  @override
  final T failedValue;
  @override
  final T min;
  @override
  final T max;

  @override
  String toString() {
    return 'ValueFailure<$T>.outOfRange(failedValue: $failedValue, min: $min, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutOfRangeImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutOfRangeImplCopyWith<T, _$OutOfRangeImpl<T>> get copyWith =>
      __$$OutOfRangeImplCopyWithImpl<T, _$OutOfRangeImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cannotBeNegative,
    required TResult Function(T failedValue, T min, T max) outOfRange,
    required TResult Function(T failedValue, num max) cannotBeMoreThanMax,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidGeoPoint,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return outOfRange(failedValue, min, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cannotBeNegative,
    TResult? Function(T failedValue, T min, T max)? outOfRange,
    TResult? Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidGeoPoint,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return outOfRange?.call(failedValue, min, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cannotBeNegative,
    TResult Function(T failedValue, T min, T max)? outOfRange,
    TResult Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidGeoPoint,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (outOfRange != null) {
      return outOfRange(failedValue, min, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CannotBeNegative<T> value) cannotBeNegative,
    required TResult Function(OutOfRange<T> value) outOfRange,
    required TResult Function(CannotBeMoreThanMax<T> value) cannotBeMoreThanMax,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidGeoPoint<T> value) invalidGeoPoint,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return outOfRange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult? Function(OutOfRange<T> value)? outOfRange,
    TResult? Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult? Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return outOfRange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult Function(OutOfRange<T> value)? outOfRange,
    TResult Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (outOfRange != null) {
      return outOfRange(this);
    }
    return orElse();
  }
}

abstract class OutOfRange<T> implements ValueFailure<T> {
  const factory OutOfRange(
      {required final T failedValue,
      required final T min,
      required final T max}) = _$OutOfRangeImpl<T>;

  @override
  T get failedValue;
  T get min;
  T get max;
  @override
  @JsonKey(ignore: true)
  _$$OutOfRangeImplCopyWith<T, _$OutOfRangeImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CannotBeMoreThanMaxImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$CannotBeMoreThanMaxImplCopyWith(_$CannotBeMoreThanMaxImpl<T> value,
          $Res Function(_$CannotBeMoreThanMaxImpl<T>) then) =
      __$$CannotBeMoreThanMaxImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, num max});
}

/// @nodoc
class __$$CannotBeMoreThanMaxImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$CannotBeMoreThanMaxImpl<T>>
    implements _$$CannotBeMoreThanMaxImplCopyWith<T, $Res> {
  __$$CannotBeMoreThanMaxImplCopyWithImpl(_$CannotBeMoreThanMaxImpl<T> _value,
      $Res Function(_$CannotBeMoreThanMaxImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = null,
  }) {
    return _then(_$CannotBeMoreThanMaxImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$CannotBeMoreThanMaxImpl<T> implements CannotBeMoreThanMax<T> {
  const _$CannotBeMoreThanMaxImpl(
      {required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final num max;

  @override
  String toString() {
    return 'ValueFailure<$T>.cannotBeMoreThanMax(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CannotBeMoreThanMaxImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.max, max) || other.max == max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CannotBeMoreThanMaxImplCopyWith<T, _$CannotBeMoreThanMaxImpl<T>>
      get copyWith => __$$CannotBeMoreThanMaxImplCopyWithImpl<T,
          _$CannotBeMoreThanMaxImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cannotBeNegative,
    required TResult Function(T failedValue, T min, T max) outOfRange,
    required TResult Function(T failedValue, num max) cannotBeMoreThanMax,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidGeoPoint,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return cannotBeMoreThanMax(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cannotBeNegative,
    TResult? Function(T failedValue, T min, T max)? outOfRange,
    TResult? Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidGeoPoint,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return cannotBeMoreThanMax?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cannotBeNegative,
    TResult Function(T failedValue, T min, T max)? outOfRange,
    TResult Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidGeoPoint,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (cannotBeMoreThanMax != null) {
      return cannotBeMoreThanMax(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CannotBeNegative<T> value) cannotBeNegative,
    required TResult Function(OutOfRange<T> value) outOfRange,
    required TResult Function(CannotBeMoreThanMax<T> value) cannotBeMoreThanMax,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidGeoPoint<T> value) invalidGeoPoint,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return cannotBeMoreThanMax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult? Function(OutOfRange<T> value)? outOfRange,
    TResult? Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult? Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return cannotBeMoreThanMax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult Function(OutOfRange<T> value)? outOfRange,
    TResult Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (cannotBeMoreThanMax != null) {
      return cannotBeMoreThanMax(this);
    }
    return orElse();
  }
}

abstract class CannotBeMoreThanMax<T> implements ValueFailure<T> {
  const factory CannotBeMoreThanMax(
      {required final T failedValue,
      required final num max}) = _$CannotBeMoreThanMaxImpl<T>;

  @override
  T get failedValue;
  num get max;
  @override
  @JsonKey(ignore: true)
  _$$CannotBeMoreThanMaxImplCopyWith<T, _$CannotBeMoreThanMaxImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl<T> value, $Res Function(_$EmptyImpl<T>) then) =
      __$$EmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyImpl<T>>
    implements _$$EmptyImplCopyWith<T, $Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl<T> _value, $Res Function(_$EmptyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$EmptyImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyImpl<T> implements Empty<T> {
  const _$EmptyImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      __$$EmptyImplCopyWithImpl<T, _$EmptyImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cannotBeNegative,
    required TResult Function(T failedValue, T min, T max) outOfRange,
    required TResult Function(T failedValue, num max) cannotBeMoreThanMax,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidGeoPoint,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cannotBeNegative,
    TResult? Function(T failedValue, T min, T max)? outOfRange,
    TResult? Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidGeoPoint,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cannotBeNegative,
    TResult Function(T failedValue, T min, T max)? outOfRange,
    TResult Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidGeoPoint,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CannotBeNegative<T> value) cannotBeNegative,
    required TResult Function(OutOfRange<T> value) outOfRange,
    required TResult Function(CannotBeMoreThanMax<T> value) cannotBeMoreThanMax,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidGeoPoint<T> value) invalidGeoPoint,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult? Function(OutOfRange<T> value)? outOfRange,
    TResult? Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult? Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult Function(OutOfRange<T> value)? outOfRange,
    TResult Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T failedValue}) = _$EmptyImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultilineImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$MultilineImplCopyWith(
          _$MultilineImpl<T> value, $Res Function(_$MultilineImpl<T>) then) =
      __$$MultilineImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$MultilineImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$MultilineImpl<T>>
    implements _$$MultilineImplCopyWith<T, $Res> {
  __$$MultilineImplCopyWithImpl(
      _$MultilineImpl<T> _value, $Res Function(_$MultilineImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$MultilineImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$MultilineImpl<T> implements Multiline<T> {
  const _$MultilineImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiline(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultilineImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultilineImplCopyWith<T, _$MultilineImpl<T>> get copyWith =>
      __$$MultilineImplCopyWithImpl<T, _$MultilineImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cannotBeNegative,
    required TResult Function(T failedValue, T min, T max) outOfRange,
    required TResult Function(T failedValue, num max) cannotBeMoreThanMax,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidGeoPoint,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return multiline(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cannotBeNegative,
    TResult? Function(T failedValue, T min, T max)? outOfRange,
    TResult? Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidGeoPoint,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return multiline?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cannotBeNegative,
    TResult Function(T failedValue, T min, T max)? outOfRange,
    TResult Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidGeoPoint,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CannotBeNegative<T> value) cannotBeNegative,
    required TResult Function(OutOfRange<T> value) outOfRange,
    required TResult Function(CannotBeMoreThanMax<T> value) cannotBeMoreThanMax,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidGeoPoint<T> value) invalidGeoPoint,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return multiline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult? Function(OutOfRange<T> value)? outOfRange,
    TResult? Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult? Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return multiline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult Function(OutOfRange<T> value)? outOfRange,
    TResult Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (multiline != null) {
      return multiline(this);
    }
    return orElse();
  }
}

abstract class Multiline<T> implements ValueFailure<T> {
  const factory Multiline({required final T failedValue}) = _$MultilineImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$MultilineImplCopyWith<T, _$MultilineImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailImplCopyWith(_$InvalidEmailImpl<T> value,
          $Res Function(_$InvalidEmailImpl<T>) then) =
      __$$InvalidEmailImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmailImpl<T>>
    implements _$$InvalidEmailImplCopyWith<T, $Res> {
  __$$InvalidEmailImplCopyWithImpl(
      _$InvalidEmailImpl<T> _value, $Res Function(_$InvalidEmailImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmailImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmailImpl<T> implements InvalidEmail<T> {
  const _$InvalidEmailImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      __$$InvalidEmailImplCopyWithImpl<T, _$InvalidEmailImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cannotBeNegative,
    required TResult Function(T failedValue, T min, T max) outOfRange,
    required TResult Function(T failedValue, num max) cannotBeMoreThanMax,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidGeoPoint,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cannotBeNegative,
    TResult? Function(T failedValue, T min, T max)? outOfRange,
    TResult? Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidGeoPoint,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cannotBeNegative,
    TResult Function(T failedValue, T min, T max)? outOfRange,
    TResult Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidGeoPoint,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CannotBeNegative<T> value) cannotBeNegative,
    required TResult Function(OutOfRange<T> value) outOfRange,
    required TResult Function(CannotBeMoreThanMax<T> value) cannotBeMoreThanMax,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidGeoPoint<T> value) invalidGeoPoint,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult? Function(OutOfRange<T> value)? outOfRange,
    TResult? Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult? Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult Function(OutOfRange<T> value)? outOfRange,
    TResult Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final T failedValue}) =
      _$InvalidEmailImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortPasswordImplCopyWith(_$ShortPasswordImpl<T> value,
          $Res Function(_$ShortPasswordImpl<T>) then) =
      __$$ShortPasswordImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortPasswordImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortPasswordImpl<T>>
    implements _$$ShortPasswordImplCopyWith<T, $Res> {
  __$$ShortPasswordImplCopyWithImpl(_$ShortPasswordImpl<T> _value,
      $Res Function(_$ShortPasswordImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortPasswordImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPasswordImpl<T> implements ShortPassword<T> {
  const _$ShortPasswordImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPasswordImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      __$$ShortPasswordImplCopyWithImpl<T, _$ShortPasswordImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cannotBeNegative,
    required TResult Function(T failedValue, T min, T max) outOfRange,
    required TResult Function(T failedValue, num max) cannotBeMoreThanMax,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidGeoPoint,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cannotBeNegative,
    TResult? Function(T failedValue, T min, T max)? outOfRange,
    TResult? Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidGeoPoint,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cannotBeNegative,
    TResult Function(T failedValue, T min, T max)? outOfRange,
    TResult Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidGeoPoint,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CannotBeNegative<T> value) cannotBeNegative,
    required TResult Function(OutOfRange<T> value) outOfRange,
    required TResult Function(CannotBeMoreThanMax<T> value) cannotBeMoreThanMax,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidGeoPoint<T> value) invalidGeoPoint,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult? Function(OutOfRange<T> value)? outOfRange,
    TResult? Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult? Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult Function(OutOfRange<T> value)? outOfRange,
    TResult Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required final T failedValue}) =
      _$ShortPasswordImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidGeoPointImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidGeoPointImplCopyWith(_$InvalidGeoPointImpl<T> value,
          $Res Function(_$InvalidGeoPointImpl<T>) then) =
      __$$InvalidGeoPointImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidGeoPointImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidGeoPointImpl<T>>
    implements _$$InvalidGeoPointImplCopyWith<T, $Res> {
  __$$InvalidGeoPointImplCopyWithImpl(_$InvalidGeoPointImpl<T> _value,
      $Res Function(_$InvalidGeoPointImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidGeoPointImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidGeoPointImpl<T> implements InvalidGeoPoint<T> {
  const _$InvalidGeoPointImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidGeoPoint(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidGeoPointImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidGeoPointImplCopyWith<T, _$InvalidGeoPointImpl<T>> get copyWith =>
      __$$InvalidGeoPointImplCopyWithImpl<T, _$InvalidGeoPointImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cannotBeNegative,
    required TResult Function(T failedValue, T min, T max) outOfRange,
    required TResult Function(T failedValue, num max) cannotBeMoreThanMax,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidGeoPoint,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return invalidGeoPoint(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cannotBeNegative,
    TResult? Function(T failedValue, T min, T max)? outOfRange,
    TResult? Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidGeoPoint,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return invalidGeoPoint?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cannotBeNegative,
    TResult Function(T failedValue, T min, T max)? outOfRange,
    TResult Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidGeoPoint,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidGeoPoint != null) {
      return invalidGeoPoint(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CannotBeNegative<T> value) cannotBeNegative,
    required TResult Function(OutOfRange<T> value) outOfRange,
    required TResult Function(CannotBeMoreThanMax<T> value) cannotBeMoreThanMax,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidGeoPoint<T> value) invalidGeoPoint,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return invalidGeoPoint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult? Function(OutOfRange<T> value)? outOfRange,
    TResult? Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult? Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return invalidGeoPoint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult Function(OutOfRange<T> value)? outOfRange,
    TResult Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidGeoPoint != null) {
      return invalidGeoPoint(this);
    }
    return orElse();
  }
}

abstract class InvalidGeoPoint<T> implements ValueFailure<T> {
  const factory InvalidGeoPoint({required final T failedValue}) =
      _$InvalidGeoPointImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidGeoPointImplCopyWith<T, _$InvalidGeoPointImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidPhoneNumberImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidPhoneNumberImplCopyWith(_$InvalidPhoneNumberImpl<T> value,
          $Res Function(_$InvalidPhoneNumberImpl<T>) then) =
      __$$InvalidPhoneNumberImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidPhoneNumberImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidPhoneNumberImpl<T>>
    implements _$$InvalidPhoneNumberImplCopyWith<T, $Res> {
  __$$InvalidPhoneNumberImplCopyWithImpl(_$InvalidPhoneNumberImpl<T> _value,
      $Res Function(_$InvalidPhoneNumberImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidPhoneNumberImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidPhoneNumberImpl<T> implements InvalidPhoneNumber<T> {
  const _$InvalidPhoneNumberImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhoneNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPhoneNumberImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidPhoneNumberImplCopyWith<T, _$InvalidPhoneNumberImpl<T>>
      get copyWith => __$$InvalidPhoneNumberImplCopyWithImpl<T,
          _$InvalidPhoneNumberImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) cannotBeNegative,
    required TResult Function(T failedValue, T min, T max) outOfRange,
    required TResult Function(T failedValue, num max) cannotBeMoreThanMax,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiline,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidGeoPoint,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return invalidPhoneNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? cannotBeNegative,
    TResult? Function(T failedValue, T min, T max)? outOfRange,
    TResult? Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? multiline,
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? shortPassword,
    TResult? Function(T failedValue)? invalidGeoPoint,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return invalidPhoneNumber?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? cannotBeNegative,
    TResult Function(T failedValue, T min, T max)? outOfRange,
    TResult Function(T failedValue, num max)? cannotBeMoreThanMax,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiline,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidGeoPoint,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CannotBeNegative<T> value) cannotBeNegative,
    required TResult Function(OutOfRange<T> value) outOfRange,
    required TResult Function(CannotBeMoreThanMax<T> value) cannotBeMoreThanMax,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Multiline<T> value) multiline,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidGeoPoint<T> value) invalidGeoPoint,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult? Function(OutOfRange<T> value)? outOfRange,
    TResult? Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult? Function(Empty<T> value)? empty,
    TResult? Function(Multiline<T> value)? multiline,
    TResult? Function(InvalidEmail<T> value)? invalidEmail,
    TResult? Function(ShortPassword<T> value)? shortPassword,
    TResult? Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult? Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CannotBeNegative<T> value)? cannotBeNegative,
    TResult Function(OutOfRange<T> value)? outOfRange,
    TResult Function(CannotBeMoreThanMax<T> value)? cannotBeMoreThanMax,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Multiline<T> value)? multiline,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidGeoPoint<T> value)? invalidGeoPoint,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber<T> implements ValueFailure<T> {
  const factory InvalidPhoneNumber({required final T failedValue}) =
      _$InvalidPhoneNumberImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidPhoneNumberImplCopyWith<T, _$InvalidPhoneNumberImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
