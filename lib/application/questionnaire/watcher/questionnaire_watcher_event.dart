part of 'questionnaire_watcher_bloc.dart';

@freezed
class QuestionnaireWatcherEvent with _$QuestionnaireWatcherEvent {
  const factory QuestionnaireWatcherEvent.watchAllQuestionnairesStarted() =
      _Started;

  const factory QuestionnaireWatcherEvent.questionnairesReceived(
    Either<Failure, List<Questionnaire>> failureOrQuestionnaires,
  ) = _QuestionnairesReceived;
}
