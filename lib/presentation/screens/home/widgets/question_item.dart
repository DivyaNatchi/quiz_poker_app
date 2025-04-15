// lib/widgets/question_item.dart
import 'package:flutter/material.dart';
import 'package:flutter_basics/data/models/question.dart';
import 'package:flutter_basics/core/utils/helpers.dart';
import 'package:flutter_basics/extensions/buildcontext/loc.dart';
import 'package:flutter_basics/l10n/app_localizations.dart';
import 'package:flutter_basics/presentation/screens/home/question_detail_screen.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key, required this.question});

  final Question question;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return SizedBox(
      height: 200,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            QuestionDetailScreen.routeName,
            arguments: question,
          );
        },
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          margin: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: ClipOval(
                        child: Image.asset(
                          getCategoryImage(question.category),
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                          style: themeData.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                          children: [
                            TextSpan(
                              text: context.getLocalizedCategory(
                                question.category,
                              ),
                            ),
                            WidgetSpan(
                              child: Transform.translate(
                                offset: const Offset(0.0, 5.0),
                                transformHitTests: false,
                                child: Text(
                                  question.getLocalizedDifficulty(context),
                                  style: themeData.textTheme.bodyMedium
                                      ?.copyWith(
                                        fontWeight: FontWeight.normal,
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.onPrimary,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  question.getLocalizedQuestionText(context),
                  style: themeData.textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
