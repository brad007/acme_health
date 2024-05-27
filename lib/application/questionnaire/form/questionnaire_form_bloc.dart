import 'package:acme_health/core/extensions/functional_extentions.dart';
import 'package:acme_health/domain/core/value_objects/number.dart';
import 'package:acme_health/domain/failure.dart';
import 'package:acme_health/domain/questionaire/i_questionnaire_repository.dart';
import 'package:acme_health/domain/questionaire/models/questionnaire.dart';
import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'questionnaire_form_bloc.freezed.dart';
part 'questionnaire_form_event.dart';
part 'questionnaire_form_state.dart';

@Injectable()
class QuestionnaireFormBloc
    extends Bloc<QuestionnaireFormEvent, QuestionnaireFormState> {
  QuestionnaireFormBloc(this._questionnaireRepository)
      : super(QuestionnaireFormState.initial()) {
    on<QuestionnaireFormEvent>((event, emit) async {
      await event.map(
        initialize: (value) {
          value.questionnaire.fold(
            () {},
            (q) {
              emit(
                state.copyWith(
                  questionnaire: q,
                  isEditing: true,
                ),
              );
            },
          );
        },
        ageChanged: (value) {
          emit(
            state.copyWith(
              questionnaire: state.questionnaire.copyWith(
                age: Number(value.age.toOption()),
              ),
            ),
          );
        },
        genderChanged: (value) {
          emit(
            state.copyWith(
              questionnaire: state.questionnaire.copyWith(
                gender: value.gender,
              ),
            ),
          );
        },
        exerciseFrequencyChanged: (value) {
          emit(
            state.copyWith(
              questionnaire: state.questionnaire.copyWith(
                exerciseFrequency: value.excerciceFrequency,
              ),
            ),
          );
        },
        isSmokingChanged: (value) {
          emit(
            state.copyWith(
              questionnaire: state.questionnaire.copyWith(
                isSmoking: value.isSmoking,
              ),
            ),
          );
        },
        sleepDurationChanged: (value) {
          emit(
            state.copyWith(
              questionnaire: state.questionnaire.copyWith(
                sleepDuration: Number(value.sleepDuration.toOption()),
              ),
            ),
          );
        },
        heightChanged: (value) {
          emit(
            state.copyWith(
              questionnaire: state.questionnaire.copyWith(
                height: Number(value.heightChanged.toOption()),
              ),
            ),
          );
        },
        weightChanged: (value) {
          emit(
            state.copyWith(
              questionnaire: state.questionnaire.copyWith(
                weight: Number(value.weightChanged.toOption()),
              ),
            ),
          );
        },
        chronicIllnessChanged: (value) {
          emit(
            state.copyWith(
              questionnaire: state.questionnaire.copyWith(
                chronicIllness: value.chronicIllness,
              ),
            ),
          );
        },
        healthRatingChanged: (value) {
          emit(
            state.copyWith(
              questionnaire: state.questionnaire.copyWith(
                healthRating: Number(value.healthRating.toOption()),
              ),
            ),
          );
        },
        dietaryRestrictionAdded: (value) {
          emit(
            state.copyWith(
              questionnaire: state.questionnaire.copyWith(
                dietaryRestrictions: [
                  ...state.questionnaire.dietaryRestrictions,
                  value.dietaryRestriction,
                ],
              ),
            ),
          );
        },
        dietaryRestrictionRemoved: (value) {
          emit(
            state.copyWith(
              questionnaire: state.questionnaire.copyWith(
                dietaryRestrictions: [
                  ...state.questionnaire.dietaryRestrictions,
                ]..remove(value.dietaryRestriction),
              ),
            ),
          );
        },
        alcoholComuptionChanged: (value) {
          emit(
            state.copyWith(
              questionnaire: state.questionnaire.copyWith(
                alcoholConsumption: value.alchoholConsumption,
              ),
            ),
          );
        },
        stressLevelChanged: (value) {
          emit(
            state.copyWith(
              questionnaire: state.questionnaire.copyWith(
                stress: value.stress,
              ),
            ),
          );
        },
        save: (value) async {
          emit(
            state.copyWith(
              isSaving: true,
            ),
          );

          final response = await _questionnaireRepository
              .addQuestionnaire(state.questionnaire)
              .run();

          emit(
            response.fold(
              (failure) => state.copyWith(
                isSaving: false,
                failure: some(failure),
              ),
              (r) => state.copyWith(
                isSaving: false,
                success: some(r),
                failure: none(),
              ),
            ),
          );
        },
        update: (value) {
          add(const QuestionnaireFormEvent.save());
        },
        delete: (value) async {
          emit(
            state.copyWith(
              isSaving: true,
            ),
          );

          final response = await _questionnaireRepository
              .deleteQuestionnaire(state.questionnaire.id)
              .run();

          emit(
            response.fold(
              (failure) => state.copyWith(
                isSaving: false,
                failure: some(failure),
              ),
              (r) => state.copyWith(
                isSaving: false,
                success: some(r),
                failure: none(),
              ),
            ),
          );
        },
      );
    });
  }

  final IQuestionnaireRepository _questionnaireRepository;
}
