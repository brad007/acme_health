import 'dart:ui';

import 'package:acme_health/application/questionnaire/form/questionnaire_form_bloc.dart';
import 'package:acme_health/domain/questionaire/models/questionnaire.dart';
import 'package:acme_health/presentation/questionnaire/widgets/age_textfield.dart';
import 'package:acme_health/presentation/questionnaire/widgets/alchohol_dropdown.dart';
import 'package:acme_health/presentation/questionnaire/widgets/chronic_illness_dropdown.dart';
import 'package:acme_health/presentation/questionnaire/widgets/diet_restrictions_checkgroup.dart';
import 'package:acme_health/presentation/questionnaire/widgets/exercise_dropdown.dart';
import 'package:acme_health/presentation/questionnaire/widgets/gender_dropdown.dart';
import 'package:acme_health/presentation/questionnaire/widgets/health_slider.dart';
import 'package:acme_health/presentation/questionnaire/widgets/height_textfield.dart';
import 'package:acme_health/presentation/questionnaire/widgets/sleep_textfield.dart';
import 'package:acme_health/presentation/questionnaire/widgets/smoking_radio.dart';
import 'package:acme_health/presentation/questionnaire/widgets/stress_dropdown.dart';
import 'package:acme_health/presentation/questionnaire/widgets/weight_textfield.dart';
import 'package:acme_health/presentation/widgets/acme_health_button.dart';
import 'package:acme_health/service_locator.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

@RoutePage()
class QuestionnairePage extends StatelessWidget {
  const QuestionnairePage({
    required this.questionnaire,
    super.key,
  });

  final Option<Questionnaire> questionnaire;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<QuestionnaireFormBloc>(
      create: (_) => getIt<QuestionnaireFormBloc>()
        ..add(QuestionnaireFormEvent.initialize(questionnaire)),
      child: BlocConsumer<QuestionnaireFormBloc, QuestionnaireFormState>(
        listener: (BuildContext context, QuestionnaireFormState state) {
          if (state.failure.isSome()) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content:
                    Text(state.failure.fold(() => '', (a) => a.toString())),
              ),
            );
          }

          if (state.success.isSome()) {
            context.router.maybePop();
          }
        },
        builder: (BuildContext context, QuestionnaireFormState state) {
          return Stack(
            children: [
              Scaffold(
                appBar: AppBar(
                  title: Text(state.isEditing ? 'Edit' : 'Create'),
                  actions: [
                    if (state.isEditing)
                      IconButton(
                        onPressed: () {
                          context
                              .read<QuestionnaireFormBloc>()
                              .add(const QuestionnaireFormEvent.delete());
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                  ],
                ),
                body: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        const AgeTextfield(),
                        const SizedBox(height: 8),
                        Divider(color: Colors.grey[200]),
                        const SizedBox(height: 8),
                        const GenderDropdown(),
                        const SizedBox(height: 8),
                        Divider(color: Colors.grey[200]),
                        const SizedBox(height: 8),
                        const ExerciseDropdown(),
                        const SmokingRadio(),
                        const SizedBox(height: 8),
                        Divider(color: Colors.grey[200]),
                        const SizedBox(height: 8),
                        const SleepTextfield(),
                        const SizedBox(height: 8),
                        Divider(color: Colors.grey[200]),
                        const SizedBox(height: 8),
                        const HeightTextfield(),
                        const SizedBox(height: 8),
                        Divider(color: Colors.grey[200]),
                        const SizedBox(height: 8),
                        const WeightTextfield(),
                        const SizedBox(height: 8),
                        Divider(color: Colors.grey[200]),
                        const SizedBox(height: 8),
                        const ChronicIllnessDropdown(),
                        const SizedBox(height: 8),
                        Divider(color: Colors.grey[200]),
                        const SizedBox(height: 8),
                        const HealthSlider(),
                        const SizedBox(height: 8),
                        Divider(color: Colors.grey[200]),
                        const SizedBox(height: 8),
                        const DietRestrictionsCheckgroup(),
                        const SizedBox(height: 8),
                        Divider(color: Colors.grey[200]),
                        const SizedBox(height: 8),
                        const AlcoholDropdown(),
                        const SizedBox(height: 8),
                        Divider(color: Colors.grey[200]),
                        const SizedBox(height: 8),
                        const StressDropdown(),
                        const SizedBox(height: 64),
                        AcmeHealthButton(
                          child: Text(state.isEditing ? 'Update' : 'Create'),
                          onPressed: () {
                            context
                                .read<QuestionnaireFormBloc>()
                                .add(const QuestionnaireFormEvent.save());
                          },
                        ),
                        const SizedBox(height: 64),
                      ],
                    ),
                  ),
                ),
              ),
              if (state.isSaving) ...[
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                ),
                const Center(
                  child: CircularProgressIndicator(),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
