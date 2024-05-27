import 'package:acme_health/application/questionnaire/form/questionnaire_form_bloc.dart';
import 'package:acme_health/domain/questionaire/models/questionnaire.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChronicIllnessDropdown extends StatelessWidget {
  const ChronicIllnessDropdown({super.key});

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
                    'Chronic Illness',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  DropdownButton<ChronicIllness>(
                    value: state.questionnaire.chronicIllness,
                    items: ChronicIllness.values.map((chronicIllness) {
                      return DropdownMenuItem<ChronicIllness>(
                        value: chronicIllness,
                        child: Text(chronicIllness.name),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        context.read<QuestionnaireFormBloc>().add(
                            QuestionnaireFormEvent.chronicIllnessChanged(
                                value));
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
