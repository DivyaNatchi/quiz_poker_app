import 'package:flutter/material.dart';
import 'package:flutter_basics/data/models/question.dart';
import 'package:flutter_basics/core/utils/helpers.dart';
import 'package:flutter_basics/l10n/app_localizations.dart'; // Import AppLocalizations

class QuestionHeader extends StatelessWidget {
  const QuestionHeader({
    super.key,
    required this.question,
    required this.remainingAttempts,
  });

  final Question question;
  final int remainingAttempts;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final l10n =
        AppLocalizations.of(context)!; // Get the AppLocalizations instance

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset(
                getCategoryImage(question.category),
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              question.category.toUpperCase(),
              style: themeData.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text(
          l10n.attemptsLeft(remainingAttempts), // Localize
          style: themeData.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
