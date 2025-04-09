// lib/presentation/home/widgets/animated_hint.dart
import 'package:flutter/material.dart';

class AnimatedHint extends StatelessWidget {
  final bool isVisible;
  final String hintNumber;
  final String? hintMessage;
  final VoidCallback onShowHint;

  const AnimatedHint({
    super.key,
    required this.isVisible,
    required this.hintNumber,
    required this.hintMessage,
    required this.onShowHint,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isVisible)
            ElevatedButton(
              onPressed: onShowHint,
              child: Text('Show Hint $hintNumber'),
            ),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: isVisible ? 1.0 : 0.0,
              child: Container(
                height: isVisible ? null : 0,
                padding:
                    isVisible
                        ? const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 12,
                        )
                        : EdgeInsets.zero,
                decoration:
                    isVisible
                        ? BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(8),
                        )
                        : null,
                child:
                    hintMessage != null
                        ? Text(
                          hintMessage!,
                          style: TextStyle(
                            color:
                                Theme.of(
                                  context,
                                ).colorScheme.onPrimaryContainer,
                          ),
                        )
                        : const SizedBox(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
