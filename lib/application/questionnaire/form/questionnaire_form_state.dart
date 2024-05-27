part of 'questionnaire_form_bloc.dart';

@freezed
class QuestionnaireFormState with _$QuestionnaireFormState {
  const factory QuestionnaireFormState({
    required Questionnaire questionnaire,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Failure> failure,
    required Option<Unit> success,
  }) = _QuestionnaireFormState;

  factory QuestionnaireFormState.initial() => QuestionnaireFormState(
        questionnaire: Questionnaire.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        failure: none(),
        success: none(),
      );
}
