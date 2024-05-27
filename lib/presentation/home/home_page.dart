import 'package:acme_health/application/questionnaire/watcher/questionnaire_watcher_bloc.dart';
import 'package:acme_health/presentation/router/app_router.gr.dart';
import 'package:acme_health/service_locator.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: BlocProvider<QuestionnaireWatcherBloc>(
        create: (context) => getIt<QuestionnaireWatcherBloc>()
          ..add(
            const QuestionnaireWatcherEvent.watchAllQuestionnairesStarted(),
          ),
        child: BlocBuilder<QuestionnaireWatcherBloc, QuestionnaireWatcherState>(
          builder: (context, state) {
            if (state.questionnaires.isEmpty) {
              return const Center(
                child: Text('No questionnaires'),
              );
            }

            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return ListView.builder(
              itemCount: state.questionnaires.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    context.router.push(
                      QuestionnaireRoute(
                        questionnaire: some(state.questionnaires[index]),
                      ),
                    );
                  },
                  title:
                      Text('questionnaires: ${state.questionnaires[index].id}'),
                  trailing: Icon(Icons.chevron_right),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(QuestionnaireRoute(questionnaire: none()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
