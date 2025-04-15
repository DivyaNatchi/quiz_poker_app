// lib/models/question.dart

import 'package:flutter/material.dart';
import 'package:flutter_basics/extensions/localization_get.dart';
import 'package:flutter_basics/l10n/app_localizations.dart';

class Question {
  final String id;
  final String category;
  final String questionTextKey;
  final List<String> answerOptionKeys;
  final String correctAnswerKey;
  final String difficultyKey;
  final String? imageUrl;
  final Duration? timeLimit;
  final String hint1Key;
  final String hint2Key;
  final String solutionKey;

  Question({
    required this.id,
    required this.category,
    required this.questionTextKey,
    required this.answerOptionKeys,
    required this.correctAnswerKey,
    required this.difficultyKey,
    this.imageUrl,
    this.timeLimit,
    required this.hint1Key,
    required this.hint2Key,
    required this.solutionKey,
  });

  String getLocalizedQuestionText(BuildContext context) =>
      AppLocalizations.of(context)!.get(questionTextKey);

  String getLocalizedDifficulty(BuildContext context) =>
      AppLocalizations.of(context)!.get(difficultyKey);

  String getLocalizedAnswerOption(BuildContext context, int index) =>
      AppLocalizations.of(context)!.get(answerOptionKeys[index]);

  String getLocalizedHint1(BuildContext context) =>
      AppLocalizations.of(context)!.get(hint1Key);

  String getLocalizedHint2(BuildContext context) =>
      AppLocalizations.of(context)!.get(hint2Key);

  String getLocalizedSolution(BuildContext context) =>
      AppLocalizations.of(context)!.get(solutionKey);
}
