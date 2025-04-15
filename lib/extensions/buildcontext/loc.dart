import 'package:flutter/material.dart' show BuildContext;
import 'package:flutter_basics/data/models/question.dart';
import 'package:flutter_basics/extensions/localization_get.dart';
import 'package:flutter_basics/l10n/app_localizations.dart'
    show AppLocalizations;

extension Localizations on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this)!;
}

extension LocalizationCategoryExtension on BuildContext {
  String getLocalizedCategory(String categoryKey) {
    final l10n = AppLocalizations.of(this)!;
    final key = categoryKey.toLowerCase().trim();

    switch (key) {
      case 'sports':
        return l10n.category_sports;
      case 'music':
        return l10n.category_music;
      case 'history':
        return l10n.category_history;
      case 'movies':
        return l10n.category_movies;
      case 'geography':
        return l10n.category_geography;
      default:
        return categoryKey; // fallback
    }
  }
}

extension LocalizedQuestion on Question {
  String getQuestionText(BuildContext context) =>
      AppLocalizations.of(context)!.get(questionTextKey);

  List<String> getAnswerOptions(BuildContext context) =>
      answerOptionKeys
          .map((key) => AppLocalizations.of(context)!.get(key))
          .toList();

  String getCorrectAnswer(BuildContext context) =>
      AppLocalizations.of(context)!.get(correctAnswerKey);

  String getDifficulty(BuildContext context) =>
      AppLocalizations.of(context)!.get(difficultyKey);

  String getHint1(BuildContext context) =>
      AppLocalizations.of(context)!.get(hint1Key);

  String getHint2(BuildContext context) =>
      AppLocalizations.of(context)!.get(hint2Key);

  String getSolution(BuildContext context) =>
      AppLocalizations.of(context)!.get(solutionKey);
}
