import 'package:acme_health/infrastructure/questionnaire/mappers/questionnaire_mapper.dart';
import 'package:injectable/injectable.dart';

@module
abstract class MapperModule {
  @lazySingleton
  QuestionnaireMapper get mapper => QuestionnaireMapper();
}
