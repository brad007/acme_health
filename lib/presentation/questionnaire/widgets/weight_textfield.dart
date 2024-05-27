import 'package:acme_health/application/questionnaire/form/questionnaire_form_bloc.dart';
import 'package:acme_health/core/extensions/functional_extentions.dart';
import 'package:acme_health/presentation/widgets/acme_health_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WeightTextfield extends HookWidget {
  const WeightTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocConsumer<QuestionnaireFormBloc, QuestionnaireFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text =
            state.questionnaire.weight.safeValue.toString();
      },
      builder: (context, state) {
        return AcmeHealthTextfield(
          value: state.questionnaire.weight,
          controller: textEditingController.toOption(),
          hint: '60'.toOption(),
          label: 'Weight (kg)'.toOption(),
          type: TextInputType.number,
          onChanged: (value) {
            context.read<QuestionnaireFormBloc>().add(
                  QuestionnaireFormEvent.weightChanged(
                    double.parse(value),
                  ),
                );
          },
          validator: (String? value) {
            if (int.parse(value ?? '0') < 0) {
              return 'Weight cannot be less than  0';
            }
            return null;
          }.toOption(),
        );
      },
    );
  }
}
