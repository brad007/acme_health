import 'package:acme_health/domain/failure.dart';
import 'package:acme_health/domain/questionaire/database_failure.dart';
import 'package:acme_health/domain/questionaire/i_questionnaire_repository.dart';
import 'package:acme_health/domain/questionaire/models/questionnaire.dart';
import 'package:acme_health/infrastructure/objectbox_store.dart';
import 'package:acme_health/infrastructure/questionnaire/mappers/questionnaire_mapper.dart';
import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/task_either.dart';
import 'package:fpdart/src/unit.dart';
import 'package:injectable/injectable.dart';

@prod
@LazySingleton(as: IQuestionnaireRepository)
class QuestionnaireRepository implements IQuestionnaireRepository {
  QuestionnaireRepository(this._objectBoxStore, this._mapper);

  final ObjectBoxStore _objectBoxStore;
  final QuestionnaireMapper _mapper;

  @override
  TaskEither<Failure, Unit> addQuestionnaire(Questionnaire questionnaire) {
    return TaskEither.tryCatch(() async {
      final questionnaireDTO = _mapper.mapToDTO(questionnaire);
      await _objectBoxStore.addQuestionnaire(questionnaireDTO);
      return unit;
    }, (error, stackTrace) {
      return const DatabaseFailure.unableToCreate();
    });
  }

  @override
  TaskEither<Failure, Unit> deleteQuestionnaire(int id) {
    return TaskEither.tryCatch(() async {
      await _objectBoxStore.removeQuestionnaire(id);
      return unit;
    }, (error, stackTrace) {
      return const DatabaseFailure.unableToDelete();
    });
  }

  @override
  TaskEither<Failure, Questionnaire> getQuestionnaire(int id) {
    return TaskEither.tryCatch(() async {
      final questionnaireDTO = await _objectBoxStore.getQuestionnaire(id);
      if (questionnaireDTO != null) {
        return _mapper.mapToDomain(questionnaireDTO);
      } else {
        throw Exception();
      }
    }, (error, stackTrace) {
      return const DatabaseFailure.unableToFetch();
    });
  }

  @override
  Stream<Either<Failure, List<Questionnaire>>> getQuestionnaires() {
    try {
      return _objectBoxStore.getQuestionnaires().map((questionnaires) {
        return right(questionnaires.map(_mapper.mapToDomain).toList());
      });
    } catch (e) {
      return Stream.value(left(const DatabaseFailure.unableToFetch()));
    }
  }

  @override
  TaskEither<Failure, Unit> updateQuestionnaire(Questionnaire questionnaire) {
    return addQuestionnaire(questionnaire);
  }
}
