import 'package:acme_health/application/questionnaire/form/questionnaire_form_bloc.dart';
import 'package:acme_health/domain/questionaire/models/questionnaire.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DietRestrictionsCheckgroup extends StatelessWidget {
  const DietRestrictionsCheckgroup({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionnaireFormBloc, QuestionnaireFormState>(
      builder: (context, state) {
        return Column(
          children: [
            const Text(
              'Diet Restrictions',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            ...DietaryRestriction.values.map((dietRestriction) {
              return CheckboxListTile(
                value: state.questionnaire.dietaryRestrictions
                    .contains(dietRestriction),
                title: Text(dietRestriction.name),
                onChanged: (bool? value) {
                  if ((value ?? false) == true) {
                    context.read<QuestionnaireFormBloc>().add(
                          QuestionnaireFormEvent.dietaryRestrictionAdded(
                            dietRestriction,
                          ),
                        );
                  } else {
                    context.read<QuestionnaireFormBloc>().add(
                          QuestionnaireFormEvent.dietaryRestrictionRemoved(
                            dietRestriction,
                          ),
                        );
                  }
                },
              );
            }),
          ],
        );
      },
    );
  }
}
