part of 'questionnaire_watcher_bloc.dart';

@freezed
class QuestionnaireWatcherState with _$QuestionnaireWatcherState {
  const factory QuestionnaireWatcherState({
    required List<Questionnaire> questionnaires,
    required bool isLoading,
    required Option<Failure> failure,
  }) = _QuestionnaireWatcherState;

  factory QuestionnaireWatcherState.initial() => QuestionnaireWatcherState(
        questionnaires: [],
        isLoading: false,
        failure: none(),
      );
}
