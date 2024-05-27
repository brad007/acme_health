import 'package:acme_health/application/questionnaire/form/questionnaire_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HealthSlider extends StatelessWidget {
  const HealthSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireFormBloc, QuestionnaireFormState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Rate your health out of 10',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '${state.questionnaire.healthRating.safeValue.toInt()}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Slider(
              inactiveColor: Colors.grey[200],
              max: 10,
              divisions: 10,
              value: state.questionnaire.healthRating.safeValue.toDouble(),
              onChanged: (value) {
                context.read<QuestionnaireFormBloc>().add(
                      QuestionnaireFormEvent.healthRatingChanged(value.toInt()),
                    );
              },
            ),
          ],
        );
      },
    );
  }
}
