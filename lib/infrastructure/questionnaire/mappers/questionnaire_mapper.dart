import 'package:acme_health/core/extensions/functional_extentions.dart';
import 'package:acme_health/domain/core/value_objects/number.dart';
import 'package:acme_health/domain/questionaire/models/questionnaire.dart';
import 'package:acme_health/infrastructure/mapper.dart';
import 'package:acme_health/infrastructure/questionnaire/dtos/questionnaire_dto.dart';

class QuestionnaireMapper implements Mapper<QuestionnaireDTO, Questionnaire> {
  @override
  QuestionnaireDTO mapToDTO(Questionnaire value) {
    return QuestionnaireDTO(
      id: value.id,
      gender: value.gender.name,
      age: value.age.safeValue.toInt(),
      height: value.height.safeValue.toDouble(),
      weight: value.weight.safeValue.toDouble(),
      exerciseFrequency: value.exerciseFrequency.name,
      isSmoking: value.isSmoking,
      sleepDuration: value.sleepDuration.safeValue.toInt(),
      chronicIllness: value.chronicIllness.name,
      healthRating: value.healthRating.safeValue.toInt(),
      dietaryRestrictions:
          value.dietaryRestrictions.map((e) => e.name).toList(),
      alcoholConsumption: value.alcoholConsumption.name,
      stress: value.stress.name,
    );
  }

  @override
  Questionnaire mapToDomain(QuestionnaireDTO value) {
    return Questionnaire(
      id: value.id,
      age: Number(value.age.toOption()),
      gender: Gender.values.firstWhere((g) => g.name == value.gender),
      exerciseFrequency: ExerciseFrequency.values
          .firstWhere((e) => e.name == value.exerciseFrequency),
      isSmoking: value.isSmoking ?? false,
      sleepDuration: Number(value.sleepDuration.toOption()),
      height: Number(value.height.toOption()),
      weight: Number(value.weight.toOption()),
      chronicIllness: ChronicIllness.values
          .firstWhere((c) => c.name == value.chronicIllness),
      healthRating: Number(value.healthRating.toOption()),
      dietaryRestrictions: value.dietaryRestrictions
              ?.map(
                (e) => DietaryRestriction.values.firstWhere((d) => d.name == e),
              )
              .toList() ??
          [],
      alcoholConsumption: AlcoholConsumption.values
          .firstWhere((a) => a.name == value.alcoholConsumption),
      stress: Stress.values.firstWhere((s) => s.name == value.stress),
    );
  }
}
