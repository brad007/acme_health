import 'package:acme_health/core/extensions/functional_extentions.dart';
import 'package:acme_health/domain/core/value_objects/number.dart';
import 'package:acme_health/domain/questionaire/database_failure.dart';
import 'package:acme_health/domain/questionaire/models/questionnaire.dart';
import 'package:acme_health/infrastructure/questionnaire/dtos/questionnaire_dto.dart';
import 'package:acme_health/infrastructure/questionnaire/questionnaire_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'mocks.mocks.dart';

void main() {
  late MockObjectBoxStore mockObjectBoxStore;
  late MockQuestionnaireMapper mockQuestionnaireMapper;
  late QuestionnaireRepository questionnaireRepository;

  setUp(() {
    mockObjectBoxStore = MockObjectBoxStore();
    mockQuestionnaireMapper = MockQuestionnaireMapper();
    questionnaireRepository = QuestionnaireRepository(
      mockObjectBoxStore,
      mockQuestionnaireMapper,
    );
  });

  group('QuestionnaireRepository', () {
    const testId = 1;
    final testQuestionnaire = Questionnaire(
      id: testId,
      age: Number(25.toOption()),
      gender: Gender.male,
      exerciseFrequency: ExerciseFrequency.daily,
      isSmoking: false,
      sleepDuration: Number(7.toOption()),
      height: Number(175.toOption()),
      weight: Number(70.toOption()),
      chronicIllness: ChronicIllness.none,
      healthRating: Number(8.toOption()),
      dietaryRestrictions: [DietaryRestriction.none],
      alcoholConsumption: AlcoholConsumption.never,
      stress: Stress.sometimes,
    );
    final testQuestionnaireDTO = QuestionnaireDTO(
      id: testId,
      age: 25,
      gender: 'male',
      exerciseFrequency: 'daily',
      isSmoking: false,
      sleepDuration: 7,
      height: 175,
      weight: 70,
      chronicIllness: 'none',
      healthRating: 8,
      dietaryRestrictions: ['none'],
      alcoholConsumption: 'never',
      stress: 'sometimes',
    );

    group('addQuestionnaire', () {
      test('should return unit on successful addition', () async {
        when(mockQuestionnaireMapper.mapToDTO(any))
            .thenReturn(testQuestionnaireDTO);
        when(mockObjectBoxStore.addQuestionnaire(any))
            .thenAnswer((_) async => Future.value());

        final result = await questionnaireRepository
            .addQuestionnaire(testQuestionnaire)
            .run();

        result.match(
          (failure) => fail('Expected unit, got Failure'),
          (unit) => expect(unit, equals(unit)),
        );

        verify(mockQuestionnaireMapper.mapToDTO(testQuestionnaire));
        verify(mockObjectBoxStore.addQuestionnaire(testQuestionnaireDTO));
      });

      test('should return DatabaseFailure.unableToCreate on failure', () async {
        when(mockQuestionnaireMapper.mapToDTO(any))
            .thenReturn(testQuestionnaireDTO);
        when(mockObjectBoxStore.addQuestionnaire(any)).thenThrow(Exception());

        final result = await questionnaireRepository
            .addQuestionnaire(testQuestionnaire)
            .run();

        result.match(
          (failure) =>
              expect(failure, equals(const DatabaseFailure.unableToCreate())),
          (unit) => fail('Expected Failure, got unit'),
        );
      });
    });

    group('deleteQuestionnaire', () {
      test('should return unit on successful deletion', () async {
        when(mockObjectBoxStore.removeQuestionnaire(any))
            .thenAnswer((_) async => Future.value());

        final result =
            await questionnaireRepository.deleteQuestionnaire(testId).run();

        result.match(
          (failure) => fail('Expected unit, got Failure'),
          (unit) => expect(unit, equals(unit)),
        );

        verify(mockObjectBoxStore.removeQuestionnaire(testId));
      });

      test('should return DatabaseFailure.unableToDelete on failure', () async {
        when(mockObjectBoxStore.removeQuestionnaire(any))
            .thenThrow(Exception());

        final result =
            await questionnaireRepository.deleteQuestionnaire(testId).run();

        result.match(
          (failure) =>
              expect(failure, equals(const DatabaseFailure.unableToDelete())),
          (unit) => fail('Expected Failure, got unit'),
        );
      });
    });

    group('getQuestionnaire', () {
      test('should return Questionnaire on successful fetch', () async {
        when(mockObjectBoxStore.getQuestionnaire(any))
            .thenAnswer((_) async => testQuestionnaireDTO);
        when(mockQuestionnaireMapper.mapToDomain(any))
            .thenReturn(testQuestionnaire);

        final result =
            await questionnaireRepository.getQuestionnaire(testId).run();

        result.match(
          (failure) => fail('Expected Questionnaire, got Failure'),
          (questionnaire) => expect(questionnaire, equals(testQuestionnaire)),
        );

        verify(mockObjectBoxStore.getQuestionnaire(testId));
        verify(mockQuestionnaireMapper.mapToDomain(testQuestionnaireDTO));
      });

      test('should return DatabaseFailure.unableToFetch on failure', () async {
        when(mockObjectBoxStore.getQuestionnaire(any)).thenThrow(Exception());

        final result =
            await questionnaireRepository.getQuestionnaire(testId).run();

        result.match(
          (failure) =>
              expect(failure, equals(const DatabaseFailure.unableToFetch())),
          (questionnaire) => fail('Expected Failure, got Questionnaire'),
        );
      });

      test(
          'should return DatabaseFailure.unableToFetch when questionnaire is null',
          () async {
        when(mockObjectBoxStore.getQuestionnaire(any))
            .thenAnswer((_) async => null);

        final result =
            await questionnaireRepository.getQuestionnaire(testId).run();

        result.match(
          (failure) =>
              expect(failure, equals(const DatabaseFailure.unableToFetch())),
          (questionnaire) => fail('Expected Failure, got Questionnaire'),
        );
      });
    });

    group('updateQuestionnaire', () {
      test('should return unit on successful update', () async {
        when(mockQuestionnaireMapper.mapToDTO(any))
            .thenReturn(testQuestionnaireDTO);
        when(mockObjectBoxStore.addQuestionnaire(any))
            .thenAnswer((_) async => Future.value());

        final result = await questionnaireRepository
            .updateQuestionnaire(testQuestionnaire)
            .run();

        result.match(
          (failure) => fail('Expected unit, got Failure'),
          (unit) => expect(unit, equals(unit)),
        );

        verify(mockQuestionnaireMapper.mapToDTO(testQuestionnaire));
        verify(mockObjectBoxStore.addQuestionnaire(testQuestionnaireDTO));
      });

      test('should return DatabaseFailure.unableToCreate on failure', () async {
        when(mockQuestionnaireMapper.mapToDTO(any))
            .thenReturn(testQuestionnaireDTO);
        when(mockObjectBoxStore.addQuestionnaire(any)).thenThrow(Exception());

        final result = await questionnaireRepository
            .updateQuestionnaire(testQuestionnaire)
            .run();

        result.match(
          (failure) =>
              expect(failure, equals(const DatabaseFailure.unableToCreate())),
          (unit) => fail('Expected Failure, got unit'),
        );
      });
    });
  });
}
