import 'package:acme_health/domain/core/value_objects/value_object.dart';
import 'package:acme_health/presentation/acme_health_colors.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

class AcmeHealthTextfield extends StatelessWidget {
  const AcmeHealthTextfield({
    required this.onChanged,
    required this.value,
    this.hint = const None(),
    this.label = const None(),
    this.prefixIcon = const None(),
    this.suffixIcon = const None(),
    this.errorMessage = const None(),
    this.controller = const None(),
    this.validator = const None(),
    this.helperText = const None(),
    this.type = TextInputType.text,
    this.obscureText = false,
    this.showError = false,
    this.enabled = true,
    super.key,
  });

  final Option<String> hint;
  final Option<String> label;
  final Option<Widget> prefixIcon;
  final Option<Widget> suffixIcon;
  final Option<String> errorMessage;

  final Option<String> helperText;

  final Option<TextEditingController> controller;

  final Option<FormFieldValidator<String>> validator;
  final ValueChanged<String> onChanged;
  final TextInputType type;
  final bool obscureText;
  final bool showError;

  final bool enabled;

  final ValueObject<dynamic> value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label.isSome()) ...[
          Text(
            label.getOrElse(() => ''),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
        ],
        TextFormField(
          enabled: enabled,
          controller: controller.fold(() => null, (t) => t),
          decoration: InputDecoration(
            filled: enabled == false,
            fillColor: AcmeHealthColors.neutral100,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            disabledBorder: _outlineInputBorder(),
            enabledBorder: _outlineInputBorder(),
            error: !(showError && errorMessage.isSome())
                ? null
                : Row(
                    children: [
                      errorMessage.fold(
                        () => const SizedBox(),
                        (r) {
                          if (r.isEmpty) return const SizedBox();
                          return const Icon(
                            Icons.info_outline,
                            color: Colors.red,
                          );
                        },
                      ),
                      SizedBox(width: errorMessage.fold(() => 0, (_) => 8)),
                      Text(
                        errorMessage.fold(() => '', (a) => a),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
            border: _outlineInputBorder(),
            hintText: hint.fold(() => null, (a) => a),
            hintStyle: TextStyle(
              fontSize: 14,
              color: AcmeHealthColors.hint,
            ),
            prefixIcon: prefixIcon.fold(() => null, (a) => a),
            suffixIcon: suffixIcon.fold(
              () => Icon(
                value.isValid() ? Icons.done_outline_rounded : Icons.clear,
                color: value.isValid() ? AcmeHealthColors.primary : Colors.red,
                size: 12,
              ),
              (a) => a,
            ),
          ),
          keyboardType: type,
          obscureText: obscureText,
          onChanged: onChanged,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
          validator: validator.fold(() => null, (a) => a),
        ),
        errorMessage.fold(
          _helperText,
          (t) {
            if (t.isEmpty) {
              return _helperText();
            }
            return const SizedBox();
          },
        ),
      ],
    );
  }

  Widget _helperText() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: helperText.fold(() => 0, (_) => 8),
        ),
        Row(
          children: [
            const SizedBox(width: 16),
            helperText.fold(
              SizedBox.new,
              (value) => Text(
                value,
                style: TextStyle(
                  fontSize: 14,
                  color: AcmeHealthColors.neutral500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  OutlineInputBorder _outlineInputBorder() {
    if (enabled == false) {
      return OutlineInputBorder(
        borderSide: BorderSide(
          color: AcmeHealthColors.neutral100,
        ),
        borderRadius: BorderRadius.circular(12),
      );
    }

    return OutlineInputBorder(
      borderSide: BorderSide(
        color: value.isValid() ? AcmeHealthColors.primary : Colors.red,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
