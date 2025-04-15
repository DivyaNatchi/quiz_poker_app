import 'package:flutter/material.dart';
import 'package:flutter_basics/data/models/question.dart';

class AnswerOptions extends StatelessWidget {
  const AnswerOptions({
    super.key,
    required this.question,
    required this.selectedAnswer,
    required this.remainingAttempts,
    required this.resultMessage,
    required this.onAnswerSelected,
  });

  final Question question;
  final String? selectedAnswer;
  final int remainingAttempts;
  final String? resultMessage;
  final Function(String) onAnswerSelected;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Wrap(
      spacing: 8,
      children: List.generate(question.answerOptionKeys.length, (index) {
        final optionKey = question.answerOptionKeys[index];
        final localizedOption = question.getLocalizedAnswerOption(
          context,
          index,
        );

        return ElevatedButton(
          onPressed:
              remainingAttempts > 0 && resultMessage == null
                  ? () {
                    onAnswerSelected(optionKey);
                  }
                  : null,
          child: Text(
            localizedOption,
            style: themeData.textTheme.bodyMedium?.copyWith(
              color: themeData.colorScheme.primary,
            ),
          ),
        );
      }),
    );
  }
}
