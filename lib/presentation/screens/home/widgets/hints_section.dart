// lib/presentation/home/widgets/hints_section.dart
import 'package:flutter/material.dart';
import 'animated_hint.dart';

class HintsSection extends StatelessWidget {
  final bool isHint1Visible;
  final bool isHint2Visible;
  final String? hint1Message;
  final String? hint2Message;
  final VoidCallback onShowHint1;
  final VoidCallback onShowHint2;

  const HintsSection({
    super.key,
    required this.isHint1Visible,
    required this.isHint2Visible,
    required this.hint1Message,
    required this.hint2Message,
    required this.onShowHint1,
    required this.onShowHint2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hints:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        AnimatedHint(
          isVisible: isHint1Visible,
          hintNumber: '1',
          hintMessage: hint1Message,
          onShowHint: onShowHint1,
        ),
        AnimatedHint(
          isVisible: isHint2Visible,
          hintNumber: '2',
          hintMessage: hint2Message,
          onShowHint: onShowHint2,
        ),
      ],
    );
  }
}
