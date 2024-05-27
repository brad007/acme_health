import 'package:acme_health/application/questionnaire/form/questionnaire_form_bloc.dart';
import 'package:acme_health/domain/questionaire/models/questionnaire.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StressDropdown extends StatelessWidget {
  const StressDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireFormBloc, QuestionnaireFormState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'How often in the day do you stress?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  DropdownButton<Stress>(
                    value: state.questionnaire.stress,
                    items: Stress.values.map((stress) {
                      return DropdownMenuItem<Stress>(
                        value: stress,
                        child: Text(stress.name),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        context.read<QuestionnaireFormBloc>().add(
                              QuestionnaireFormEvent.stressLevelChanged(
                                value,
                              ),
                            );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
