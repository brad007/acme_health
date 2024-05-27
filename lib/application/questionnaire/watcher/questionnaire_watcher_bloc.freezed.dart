// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionnaireWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllQuestionnairesStarted,
    required TResult Function(
            Either<Failure, List<Questionnaire>> failureOrQuestionnaires)
        questionnairesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllQuestionnairesStarted,
    TResult? Function(
            Either<Failure, List<Questionnaire>> failureOrQuestionnaires)?
        questionnairesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllQuestionnairesStarted,
    TResult Function(
            Either<Failure, List<Questionnaire>> failureOrQuestionnaires)?
        questionnairesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) watchAllQuestionnairesStarted,
    required TResult Function(_QuestionnairesReceived value)
        questionnairesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? watchAllQuestionnairesStarted,
    TResult? Function(_QuestionnairesReceived value)? questionnairesReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? watchAllQuestionnairesStarted,
    TResult Function(_QuestionnairesReceived value)? questionnairesReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireWatcherEventCopyWith<$Res> {
  factory $QuestionnaireWatcherEventCopyWith(QuestionnaireWatcherEvent value,
          $Res Function(QuestionnaireWatcherEvent) then) =
      _$QuestionnaireWatcherEventCopyWithImpl<$Res, QuestionnaireWatcherEvent>;
}

/// @nodoc
class _$QuestionnaireWatcherEventCopyWithImpl<$Res,
        $Val extends QuestionnaireWatcherEvent>
    implements $QuestionnaireWatcherEventCopyWith<$Res> {
  _$QuestionnaireWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$QuestionnaireWatcherEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'QuestionnaireWatcherEvent.watchAllQuestionnairesStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllQuestionnairesStarted,
    required TResult Function(
            Either<Failure, List<Questionnaire>> failureOrQuestionnaires)
        questionnairesReceived,
  }) {
    return watchAllQuestionnairesStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllQuestionnairesStarted,
    TResult? Function(
            Either<Failure, List<Questionnaire>> failureOrQuestionnaires)?
        questionnairesReceived,
  }) {
    return watchAllQuestionnairesStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllQuestionnairesStarted,
    TResult Function(
            Either<Failure, List<Questionnaire>> failureOrQuestionnaires)?
        questionnairesReceived,
    required TResult orElse(),
  }) {
    if (watchAllQuestionnairesStarted != null) {
      return watchAllQuestionnairesStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) watchAllQuestionnairesStarted,
    required TResult Function(_QuestionnairesReceived value)
        questionnairesReceived,
  }) {
    return watchAllQuestionnairesStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? watchAllQuestionnairesStarted,
    TResult? Function(_QuestionnairesReceived value)? questionnairesReceived,
  }) {
    return watchAllQuestionnairesStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? watchAllQuestionnairesStarted,
    TResult Function(_QuestionnairesReceived value)? questionnairesReceived,
    required TResult orElse(),
  }) {
    if (watchAllQuestionnairesStarted != null) {
      return watchAllQuestionnairesStarted(this);
    }
    return orElse();
  }
}

abstract class _Started implements QuestionnaireWatcherEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$QuestionnairesReceivedImplCopyWith<$Res> {
  factory _$$QuestionnairesReceivedImplCopyWith(
          _$QuestionnairesReceivedImpl value,
          $Res Function(_$QuestionnairesReceivedImpl) then) =
      __$$QuestionnairesReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<Failure, List<Questionnaire>> failureOrQuestionnaires});
}

/// @nodoc
class __$$QuestionnairesReceivedImplCopyWithImpl<$Res>
    extends _$QuestionnaireWatcherEventCopyWithImpl<$Res,
        _$QuestionnairesReceivedImpl>
    implements _$$QuestionnairesReceivedImplCopyWith<$Res> {
  __$$QuestionnairesReceivedImplCopyWithImpl(
      _$QuestionnairesReceivedImpl _value,
      $Res Function(_$QuestionnairesReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureOrQuestionnaires = null,
  }) {
    return _then(_$QuestionnairesReceivedImpl(
      null == failureOrQuestionnaires
          ? _value.failureOrQuestionnaires
          : failureOrQuestionnaires // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Questionnaire>>,
    ));
  }
}

/// @nodoc

class _$QuestionnairesReceivedImpl implements _QuestionnairesReceived {
  const _$QuestionnairesReceivedImpl(this.failureOrQuestionnaires);

  @override
  final Either<Failure, List<Questionnaire>> failureOrQuestionnaires;

  @override
  String toString() {
    return 'QuestionnaireWatcherEvent.questionnairesReceived(failureOrQuestionnaires: $failureOrQuestionnaires)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnairesReceivedImpl &&
            (identical(
                    other.failureOrQuestionnaires, failureOrQuestionnaires) ||
                other.failureOrQuestionnaires == failureOrQuestionnaires));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrQuestionnaires);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnairesReceivedImplCopyWith<_$QuestionnairesReceivedImpl>
      get copyWith => __$$QuestionnairesReceivedImplCopyWithImpl<
          _$QuestionnairesReceivedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllQuestionnairesStarted,
    required TResult Function(
            Either<Failure, List<Questionnaire>> failureOrQuestionnaires)
        questionnairesReceived,
  }) {
    return questionnairesReceived(failureOrQuestionnaires);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchAllQuestionnairesStarted,
    TResult? Function(
            Either<Failure, List<Questionnaire>> failureOrQuestionnaires)?
        questionnairesReceived,
  }) {
    return questionnairesReceived?.call(failureOrQuestionnaires);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllQuestionnairesStarted,
    TResult Function(
            Either<Failure, List<Questionnaire>> failureOrQuestionnaires)?
        questionnairesReceived,
    required TResult orElse(),
  }) {
    if (questionnairesReceived != null) {
      return questionnairesReceived(failureOrQuestionnaires);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) watchAllQuestionnairesStarted,
    required TResult Function(_QuestionnairesReceived value)
        questionnairesReceived,
  }) {
    return questionnairesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? watchAllQuestionnairesStarted,
    TResult? Function(_QuestionnairesReceived value)? questionnairesReceived,
  }) {
    return questionnairesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? watchAllQuestionnairesStarted,
    TResult Function(_QuestionnairesReceived value)? questionnairesReceived,
    required TResult orElse(),
  }) {
    if (questionnairesReceived != null) {
      return questionnairesReceived(this);
    }
    return orElse();
  }
}

abstract class _QuestionnairesReceived implements QuestionnaireWatcherEvent {
  const factory _QuestionnairesReceived(
          final Either<Failure, List<Questionnaire>> failureOrQuestionnaires) =
      _$QuestionnairesReceivedImpl;

  Either<Failure, List<Questionnaire>> get failureOrQuestionnaires;
  @JsonKey(ignore: true)
  _$$QuestionnairesReceivedImplCopyWith<_$QuestionnairesReceivedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionnaireWatcherState {
  List<Questionnaire> get questionnaires => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Failure> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionnaireWatcherStateCopyWith<QuestionnaireWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireWatcherStateCopyWith<$Res> {
  factory $QuestionnaireWatcherStateCopyWith(QuestionnaireWatcherState value,
          $Res Function(QuestionnaireWatcherState) then) =
      _$QuestionnaireWatcherStateCopyWithImpl<$Res, QuestionnaireWatcherState>;
  @useResult
  $Res call(
      {List<Questionnaire> questionnaires,
      bool isLoading,
      Option<Failure> failure});
}

/// @nodoc
class _$QuestionnaireWatcherStateCopyWithImpl<$Res,
        $Val extends QuestionnaireWatcherState>
    implements $QuestionnaireWatcherStateCopyWith<$Res> {
  _$QuestionnaireWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionnaires = null,
    Object? isLoading = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      questionnaires: null == questionnaires
          ? _value.questionnaires
          : questionnaires // ignore: cast_nullable_to_non_nullable
              as List<Questionnaire>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionnaireWatcherStateImplCopyWith<$Res>
    implements $QuestionnaireWatcherStateCopyWith<$Res> {
  factory _$$QuestionnaireWatcherStateImplCopyWith(
          _$QuestionnaireWatcherStateImpl value,
          $Res Function(_$QuestionnaireWatcherStateImpl) then) =
      __$$QuestionnaireWatcherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Questionnaire> questionnaires,
      bool isLoading,
      Option<Failure> failure});
}

/// @nodoc
class __$$QuestionnaireWatcherStateImplCopyWithImpl<$Res>
    extends _$QuestionnaireWatcherStateCopyWithImpl<$Res,
        _$QuestionnaireWatcherStateImpl>
    implements _$$QuestionnaireWatcherStateImplCopyWith<$Res> {
  __$$QuestionnaireWatcherStateImplCopyWithImpl(
      _$QuestionnaireWatcherStateImpl _value,
      $Res Function(_$QuestionnaireWatcherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionnaires = null,
    Object? isLoading = null,
    Object? failure = null,
  }) {
    return _then(_$QuestionnaireWatcherStateImpl(
      questionnaires: null == questionnaires
          ? _value._questionnaires
          : questionnaires // ignore: cast_nullable_to_non_nullable
              as List<Questionnaire>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
    ));
  }
}

/// @nodoc

class _$QuestionnaireWatcherStateImpl implements _QuestionnaireWatcherState {
  const _$QuestionnaireWatcherStateImpl(
      {required final List<Questionnaire> questionnaires,
      required this.isLoading,
      required this.failure})
      : _questionnaires = questionnaires;

  final List<Questionnaire> _questionnaires;
  @override
  List<Questionnaire> get questionnaires {
    if (_questionnaires is EqualUnmodifiableListView) return _questionnaires;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionnaires);
  }

  @override
  final bool isLoading;
  @override
  final Option<Failure> failure;

  @override
  String toString() {
    return 'QuestionnaireWatcherState(questionnaires: $questionnaires, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireWatcherStateImpl &&
            const DeepCollectionEquality()
                .equals(other._questionnaires, _questionnaires) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_questionnaires), isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireWatcherStateImplCopyWith<_$QuestionnaireWatcherStateImpl>
      get copyWith => __$$QuestionnaireWatcherStateImplCopyWithImpl<
          _$QuestionnaireWatcherStateImpl>(this, _$identity);
}

abstract class _QuestionnaireWatcherState implements QuestionnaireWatcherState {
  const factory _QuestionnaireWatcherState(
          {required final List<Questionnaire> questionnaires,
          required final bool isLoading,
          required final Option<Failure> failure}) =
      _$QuestionnaireWatcherStateImpl;

  @override
  List<Questionnaire> get questionnaires;
  @override
  bool get isLoading;
  @override
  Option<Failure> get failure;
  @override
  @JsonKey(ignore: true)
  _$$QuestionnaireWatcherStateImplCopyWith<_$QuestionnaireWatcherStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
