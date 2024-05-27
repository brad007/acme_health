import 'package:acme_health/domain/failure.dart';
import 'package:acme_health/domain/questionaire/i_questionnaire_repository.dart';
import 'package:acme_health/domain/questionaire/models/questionnaire.dart';
import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'questionnaire_watcher_bloc.freezed.dart';
part 'questionnaire_watcher_event.dart';
part 'questionnaire_watcher_state.dart';

@Injectable()
class QuestionnaireWatcherBloc
    extends Bloc<QuestionnaireWatcherEvent, QuestionnaireWatcherState> {
  QuestionnaireWatcherBloc(this._questionnaireRepository)
      : super(QuestionnaireWatcherState.initial()) {
    on<QuestionnaireWatcherEvent>((event, emit) {
      event.map(
        watchAllQuestionnairesStarted: (value) {
          emit(
            state.copyWith(
              isLoading: true,
              failure: none(),
            ),
          );

          _questionnaireRepository.getQuestionnaires().listen((questionnaire) {
            add(
              QuestionnaireWatcherEvent.questionnairesReceived(
                questionnaire,
              ),
            );
          });
        },
        questionnairesReceived: (value) {
          emit(
            value.failureOrQuestionnaires.fold(
              (l) => state.copyWith(
                isLoading: false,
                failure: some(l),
              ),
              (questionnaires) => state.copyWith(
                isLoading: false,
                failure: none(),
                questionnaires: questionnaires,
              ),
            ),
          );
        },
      );
    });
  }

  final IQuestionnaireRepository _questionnaireRepository;
}
