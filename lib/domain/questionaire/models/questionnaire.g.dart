// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionnaireImpl _$$QuestionnaireImplFromJson(Map<String, dynamic> json) =>
    _$QuestionnaireImpl(
      id: (json['id'] as num).toInt(),
      age: const NumberSerializer().fromJson(json['age'] as num),
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      exerciseFrequency:
          $enumDecode(_$ExerciseFrequencyEnumMap, json['exerciseFrequency']),
      isSmoking: json['isSmoking'] as bool,
      sleepDuration:
          const NumberSerializer().fromJson(json['sleepDuration'] as num),
      height: const NumberSerializer().fromJson(json['height'] as num),
      weight: const NumberSerializer().fromJson(json['weight'] as num),
      chronicIllness:
          $enumDecode(_$ChronicIllnessEnumMap, json['chronicIllness']),
      healthRating:
          const NumberSerializer().fromJson(json['healthRating'] as num),
      dietaryRestrictions: (json['dietaryRestrictions'] as List<dynamic>)
          .map((e) => $enumDecode(_$DietaryRestrictionEnumMap, e))
          .toList(),
      alcoholConsumption:
          $enumDecode(_$AlcoholConsumptionEnumMap, json['alcoholConsumption']),
      stress: $enumDecode(_$StressEnumMap, json['stress']),
    );

Map<String, dynamic> _$$QuestionnaireImplToJson(_$QuestionnaireImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'age': const NumberSerializer().toJson(instance.age),
      'gender': _$GenderEnumMap[instance.gender]!,
      'exerciseFrequency':
          _$ExerciseFrequencyEnumMap[instance.exerciseFrequency]!,
      'isSmoking': instance.isSmoking,
      'sleepDuration': const NumberSerializer().toJson(instance.sleepDuration),
      'height': const NumberSerializer().toJson(instance.height),
      'weight': const NumberSerializer().toJson(instance.weight),
      'chronicIllness': _$ChronicIllnessEnumMap[instance.chronicIllness]!,
      'healthRating': const NumberSerializer().toJson(instance.healthRating),
      'dietaryRestrictions': instance.dietaryRestrictions
          .map((e) => _$DietaryRestrictionEnumMap[e]!)
          .toList(),
      'alcoholConsumption':
          _$AlcoholConsumptionEnumMap[instance.alcoholConsumption]!,
      'stress': _$StressEnumMap[instance.stress]!,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
  Gender.prefer_not_to_say: 'prefer_not_to_say',
};

const _$ExerciseFrequencyEnumMap = {
  ExerciseFrequency.daily: 'daily',
  ExerciseFrequency.weekly: 'weekly',
  ExerciseFrequency.monthly: 'monthly',
  ExerciseFrequency.rarely: 'rarely',
  ExerciseFrequency.never: 'never',
};

const _$ChronicIllnessEnumMap = {
  ChronicIllness.diabetes: 'diabetes',
  ChronicIllness.hypertension: 'hypertension',
  ChronicIllness.asthma: 'asthma',
  ChronicIllness.cancer: 'cancer',
  ChronicIllness.hiv: 'hiv',
  ChronicIllness.other: 'other',
  ChronicIllness.none: 'none',
};

const _$DietaryRestrictionEnumMap = {
  DietaryRestriction.vegetarian: 'vegetarian',
  DietaryRestriction.vegan: 'vegan',
  DietaryRestriction.pescatarian: 'pescatarian',
  DietaryRestriction.gluten_free: 'gluten_free',
  DietaryRestriction.dairy_free: 'dairy_free',
  DietaryRestriction.nut_free: 'nut_free',
  DietaryRestriction.other: 'other',
  DietaryRestriction.none: 'none',
};

const _$AlcoholConsumptionEnumMap = {
  AlcoholConsumption.never: 'never',
  AlcoholConsumption.occasionally: 'occasionally',
  AlcoholConsumption.frequently: 'frequently',
};

const _$StressEnumMap = {
  Stress.never: 'never',
  Stress.sometimes: 'sometimes',
  Stress.often: 'often',
  Stress.always: 'always',
};
