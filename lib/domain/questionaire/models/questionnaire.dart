import 'package:acme_health/domain/core/serializers/number_serializer.dart';
import 'package:acme_health/domain/core/value_objects/number.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire.freezed.dart';
part 'questionnaire.g.dart';

enum Gender {
  @JsonValue('male')
  male,
  @JsonValue('female')
  female,
  @JsonValue('other')
  other,
  @JsonValue('prefer_not_to_say')
  prefer_not_to_say;

  String get name => switch (this) {
        Gender.male => 'Male',
        Gender.female => 'Female',
        Gender.other => 'Other',
        Gender.prefer_not_to_say => 'Prefer not to say',
      };
}

enum ExerciseFrequency {
  @JsonValue('daily')
  daily,
  @JsonValue('weekly')
  weekly,
  @JsonValue('monthly')
  monthly,
  @JsonValue('rarely')
  rarely,
  @JsonValue('never')
  never;

  String get name => switch (this) {
        ExerciseFrequency.daily => 'Daily',
        ExerciseFrequency.weekly => 'Weekly',
        ExerciseFrequency.monthly => 'Monthly',
        ExerciseFrequency.rarely => 'Rarely',
        ExerciseFrequency.never => 'Never',
      };
}

enum ChronicIllness {
  @JsonValue('diabetes')
  diabetes,
  @JsonValue('hypertension')
  hypertension,
  @JsonValue('asthma')
  asthma,
  @JsonValue('cancer')
  cancer,
  @JsonValue('hiv')
  hiv,
  @JsonValue('other')
  other,
  @JsonValue('none')
  none;

  String get name => switch (this) {
        ChronicIllness.diabetes => 'Diabetes',
        ChronicIllness.hypertension => 'Hypertension',
        ChronicIllness.asthma => 'Asthma',
        ChronicIllness.cancer => 'Cancer',
        ChronicIllness.hiv => 'HIV',
        ChronicIllness.other => 'Other',
        ChronicIllness.none => 'None',
      };
}

enum DietaryRestriction {
  @JsonValue('vegetarian')
  vegetarian,
  @JsonValue('vegan')
  vegan,
  @JsonValue('pescatarian')
  pescatarian,
  @JsonValue('gluten_free')
  gluten_free,
  @JsonValue('dairy_free')
  dairy_free,
  @JsonValue('nut_free')
  nut_free,
  @JsonValue('other')
  other,
  @JsonValue('none')
  none;

  String get name => switch (this) {
        DietaryRestriction.vegetarian => 'Vegetarian',
        DietaryRestriction.vegan => 'Vegan',
        DietaryRestriction.pescatarian => 'Pescatarian',
        DietaryRestriction.gluten_free => 'Gluten Free',
        DietaryRestriction.dairy_free => 'Dairy Free',
        DietaryRestriction.nut_free => 'Nut Free',
        DietaryRestriction.other => 'Other',
        DietaryRestriction.none => 'None',
      };
}

enum AlcoholConsumption {
  @JsonValue('never')
  never,
  @JsonValue('occasionally')
  occasionally,
  @JsonValue('frequently')
  frequently;

  String get name => switch (this) {
        AlcoholConsumption.never => 'Never',
        AlcoholConsumption.occasionally => 'Occasionally',
        AlcoholConsumption.frequently => 'Frequently',
      };
}

enum Stress {
  @JsonValue('never')
  never,
  @JsonValue('sometimes')
  sometimes,
  @JsonValue('often')
  often,
  @JsonValue('always')
  always;

  String get name => switch (this) {
        Stress.never => 'Never',
        Stress.sometimes => 'Sometimes',
        Stress.often => 'Often',
        Stress.always => 'Always',
      };
}

@freezed
class Questionnaire with _$Questionnaire {
  const factory Questionnaire({
    required int id,
    @NumberSerializer() required Number age,
    required Gender gender,
    required ExerciseFrequency exerciseFrequency,
    required bool isSmoking,
    @NumberSerializer() required Number sleepDuration,
    @NumberSerializer() required Number height,
    @NumberSerializer() required Number weight,
    required ChronicIllness chronicIllness,
    @NumberSerializer() required Number healthRating,
    required List<DietaryRestriction> dietaryRestrictions,
    required AlcoholConsumption alcoholConsumption,
    required Stress stress,
  }) = _Questionnaire;

  factory Questionnaire.empty() => Questionnaire(
        id: 0,
        age: Number(none()),
        gender: Gender.male,
        exerciseFrequency: ExerciseFrequency.daily,
        isSmoking: false,
        sleepDuration: Number(none()),
        height: Number(none()),
        weight: Number(none()),
        chronicIllness: ChronicIllness.none,
        healthRating: Number(none()),
        dietaryRestrictions: [],
        alcoholConsumption: AlcoholConsumption.never,
        stress: Stress.never,
      );

  factory Questionnaire.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireFromJson(json);
}
