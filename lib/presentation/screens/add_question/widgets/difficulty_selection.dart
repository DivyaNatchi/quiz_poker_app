import 'package:flutter/material.dart';
import 'package:flutter_basics/l10n/app_localizations.dart'; // Import AppLocalizations

class DifficultySelection extends StatelessWidget {
  const DifficultySelection({
    super.key,
    required this.selectedDifficulty,
    required this.difficultyOptions,
    required this.onChanged,
    required this.themeData,
  });

  final String? selectedDifficulty;
  final List<String> difficultyOptions;
  final Function(String?) onChanged;
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.difficulty,
          style: themeData.textTheme.labelLarge?.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.primary),
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:
                difficultyOptions.map((String value) {
                  return RadioListTile<String>(
                    title: Text(value),
                    value: value,
                    groupValue: selectedDifficulty,
                    onChanged: (newValue) {
                      onChanged(newValue);
                    },
                  );
                }).toList(),
          ),
        ),
      ],
    );
  }
}
