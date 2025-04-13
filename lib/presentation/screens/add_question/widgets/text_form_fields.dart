import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/components/inputs/custom_text_from_field.dart';

class TextFormFields extends StatelessWidget {
  const TextFormFields({
    super.key,
    required this.controllers,
    required this.validateField,
  });

  final Map<String, TextEditingController> controllers;
  final String? Function(String? value, String message) validateField;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          controllers.entries.map((entry) {
            final label = entry.key;
            final controller = entry.value;
            int? maxLines;
            String validatorMessage;

            switch (label) {
              case 'questionText':
                maxLines = 2;
                validatorMessage = 'Please enter the question text';
                break;
              case 'solution':
                maxLines = 3;
                validatorMessage = 'Please enter the solution';
                break;
              default:
                validatorMessage = 'Please enter the $label';
            }

            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: CustomTextFormField(
                controller: controller,
                labelText: label,
                validator: (value) => validateField(value, validatorMessage),
                maxLines: maxLines,
              ),
            );
          }).toList(),
    );
  }
}
