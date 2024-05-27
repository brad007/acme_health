import 'package:acme_health/application/questionnaire/form/questionnaire_form_bloc.dart';
import 'package:acme_health/domain/questionaire/models/questionnaire.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderDropdown extends StatelessWidget {
  const GenderDropdown({super.key});

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
                    'Gender',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  DropdownButton<Gender>(
                    value: state.questionnaire.gender,
                    items: Gender.values.map((gender) {
                      return DropdownMenuItem<Gender>(
                        value: gender,
                        child: Text(gender.name),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        context
                            .read<QuestionnaireFormBloc>()
                            .add(QuestionnaireFormEvent.genderChanged(value));
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
