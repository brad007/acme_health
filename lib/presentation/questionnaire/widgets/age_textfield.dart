import 'package:acme_health/application/questionnaire/form/questionnaire_form_bloc.dart';
import 'package:acme_health/core/extensions/functional_extentions.dart';
import 'package:acme_health/presentation/widgets/acme_health_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AgeTextfield extends HookWidget {
  const AgeTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocConsumer<QuestionnaireFormBloc, QuestionnaireFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text =
            state.questionnaire.age.safeValue.toString();
      },
      builder: (context, state) {
        return AcmeHealthTextfield(
          value: state.questionnaire.age,
          controller: textEditingController.toOption(),
          hint: '25'.toOption(),
          label: 'Age'.toOption(),
          type: TextInputType.number,
          onChanged: (value) {
            context.read<QuestionnaireFormBloc>().add(
                  QuestionnaireFormEvent.ageChanged(
                    int.parse(value),
                  ),
                );
          },
          validator: (String? value) {
            if (int.parse(value ?? '0') < 1) {
              return 'Age cannot be 0 or less';
            }
            return null;
          }.toOption(),
        );
      },
    );
  }
}
