import 'package:acme_health/application/questionnaire/form/questionnaire_form_bloc.dart';
import 'package:acme_health/domain/questionaire/models/questionnaire.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlcoholDropdown extends StatelessWidget {
  const AlcoholDropdown({super.key});

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
                    'Alcohol consumption',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  DropdownButton<AlcoholConsumption>(
                    value: state.questionnaire.alcoholConsumption,
                    items: AlcoholConsumption.values.map((alcoholConsumption) {
                      return DropdownMenuItem<AlcoholConsumption>(
                        value: alcoholConsumption,
                        child: Text(alcoholConsumption.name),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        context.read<QuestionnaireFormBloc>().add(
                              QuestionnaireFormEvent.alcoholComuptionChanged(
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
