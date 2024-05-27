import 'package:acme_health/domain/failure.dart';
import 'package:acme_health/domain/questionaire/models/questionnaire.dart';
import 'package:fpdart/fpdart.dart';

abstract class IQuestionnaireRepository {
  Stream<Either<Failure, List<Questionnaire>>> getQuestionnaires();

  TaskEither<Failure, Questionnaire> getQuestionnaire(int id);

  TaskEither<Failure, Unit> addQuestionnaire(Questionnaire questionnaire);

  TaskEither<Failure, Unit> updateQuestionnaire(Questionnaire questionnaire);

  TaskEither<Failure, Unit> deleteQuestionnaire(int id);
}
