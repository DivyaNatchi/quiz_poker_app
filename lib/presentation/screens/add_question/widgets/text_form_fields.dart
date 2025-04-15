import 'package:flutter/material.dart';
import 'package:flutter_basics/presentation/components/inputs/custom_text_from_field.dart';
import 'package:flutter_basics/l10n/app_localizations.dart'; // Import AppLocalizations

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
    final l10n = AppLocalizations.of(context)!;
    return Column(
      children:
          controllers.entries.map((entry) {
            final label = entry.key;
            final controller = entry.value;
            int? maxLines;
            String labelText = "";
            String validatorMessage;

            switch (label) {
              case 'questionText':
                maxLines = 2;
                labelText = l10n.questionDetails;
                validatorMessage = l10n.enterQuestionText;
                break;
              case 'answerOptions':
                maxLines = 1;
                labelText = l10n.answerOptionsLabel;
                validatorMessage = l10n.enterAnswerOption;
                break;
              case 'correctAnswer':
                maxLines = 1;
                labelText = l10n.correctAnswerLabel;
                validatorMessage = l10n.enterCorrectAnswer;
                break;
              case 'hint1':
                maxLines = 1;
                labelText = l10n.hint1;
                validatorMessage = l10n.enterHint1;
                break;
              case 'hint2':
                maxLines = 1;
                labelText = l10n.hint2;
                validatorMessage = l10n.enterHint2;
                break;
              case 'solution':
                maxLines = 2;
                labelText = l10n.solution;
                validatorMessage = l10n.enterSolution;
                break;
              default:
                validatorMessage = '${l10n.enter} $label';
            }

            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: CustomTextFormField(
                controller: controller,
                labelText: labelText,
                validator: (value) => validateField(value, validatorMessage),
                maxLines: maxLines,
              ),
            );
          }).toList(),
    );
  }
}
