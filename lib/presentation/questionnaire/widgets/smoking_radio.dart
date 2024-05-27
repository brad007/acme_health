import 'package:acme_health/application/questionnaire/form/questionnaire_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SmokingRadio extends StatelessWidget {
  const SmokingRadio({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireFormBloc, QuestionnaireFormState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Do you smoke?',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            RadioListTile(
              value: true,
              title: const Text('Yes'),
              groupValue: state.questionnaire.isSmoking,
              onChanged: (value) {
                context.read<QuestionnaireFormBloc>().add(
                      const QuestionnaireFormEvent.isSmokingChanged(
                        isSmoking: true,
                      ),
                    );
              },
            ),
            RadioListTile(
              value: false,
              title: const Text('No'),
              groupValue: state.questionnaire.isSmoking,
              onChanged: (value) {
                context.read<QuestionnaireFormBloc>().add(
                      const QuestionnaireFormEvent.isSmokingChanged(
                        isSmoking: false,
                      ),
                    );
              },
            ),
          ],
        );
      },
    );
  }
}
