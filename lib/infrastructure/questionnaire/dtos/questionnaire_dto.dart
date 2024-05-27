import 'package:objectbox/objectbox.dart';

@Entity()
class QuestionnaireDTO {
  QuestionnaireDTO({
    this.id = 0,
    this.age = 0,
    this.gender = 'Male',
    this.exerciseFrequency = 'Daily',
    this.isSmoking = false,
    this.sleepDuration = 0,
    this.height = 0,
    this.weight = 0,
    this.chronicIllness = 'None',
    this.healthRating = 0,
    this.dietaryRestrictions = const [],
    this.alcoholConsumption = 'Never',
    this.stress = 'Never',
  });
  @Id()
  int id = 0;
  int? age;
  String? gender;
  String? exerciseFrequency;
  bool? isSmoking;
  int? sleepDuration;
  double? height;
  double? weight;
  String? chronicIllness;
  int? healthRating;
  List<String>? dietaryRestrictions;
  String? alcoholConsumption;
  String? stress;
}
