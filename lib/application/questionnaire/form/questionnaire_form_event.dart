part of 'questionnaire_form_bloc.dart';

@freezed
class QuestionnaireFormEvent with _$QuestionnaireFormEvent {
  const factory QuestionnaireFormEvent.initialize(
    Option<Questionnaire> questionnaire,
  ) = _Initialize;

  const factory QuestionnaireFormEvent.ageChanged(int age) = _AgeChanged;

  const factory QuestionnaireFormEvent.genderChanged(Gender gender) =
      _GenderChanged;

  const factory QuestionnaireFormEvent.exerciseFrequencyChanged(
      ExerciseFrequency excerciceFrequency) = _ExerciseFrequencyChanged;

  const factory QuestionnaireFormEvent.isSmokingChanged(
      {required bool isSmoking}) = _SmokingChanged;

  const factory QuestionnaireFormEvent.sleepDurationChanged(int sleepDuration) =
      _SleepDurationChanged;

  const factory QuestionnaireFormEvent.heightChanged(double heightChanged) =
      _HeightChanged;

  const factory QuestionnaireFormEvent.weightChanged(double weightChanged) =
      _WeightChanged;

  const factory QuestionnaireFormEvent.chronicIllnessChanged(
      ChronicIllness chronicIllness) = _ChronicIllnessChanged;

  const factory QuestionnaireFormEvent.healthRatingChanged(int healthRating) =
      _HealthRatingChanged;

  const factory QuestionnaireFormEvent.dietaryRestrictionAdded(
      DietaryRestriction dietaryRestriction) = _DietaryRestrictionAdded;
  const factory QuestionnaireFormEvent.dietaryRestrictionRemoved(
      DietaryRestriction dietaryRestriction) = _DietaryRestrictionRemoved;
  const factory QuestionnaireFormEvent.alcoholComuptionChanged(
      AlcoholConsumption alchoholConsumption) = _AlchoholConsumptionChanged;
  const factory QuestionnaireFormEvent.stressLevelChanged(Stress stress) =
      _StressChanged;

  const factory QuestionnaireFormEvent.save() = _Save;
  const factory QuestionnaireFormEvent.update() = _Update;
  const factory QuestionnaireFormEvent.delete() = _Delete;
}
