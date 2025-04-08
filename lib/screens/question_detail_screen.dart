// lib/screens/question_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_basics/models/question.dart';
import 'package:flutter_basics/utils/helpers.dart';

class QuestionDetailScreen extends StatefulWidget {
  static const routeName = '/question_detail';
  final Question question;

  const QuestionDetailScreen({super.key, required this.question});

  @override
  State<QuestionDetailScreen> createState() => _QuestionDetailScreenState();
}

class _QuestionDetailScreenState extends State<QuestionDetailScreen> {
  int _remainingAttempts = 3;
  String? _selectedAnswer;
  String? _resultMessage;
  bool _isHint1Visible = false;
  bool _isHint2Visible = false;
  String? _hint1Message;
  String? _hint2Message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question Details'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        getCategoryImage(widget.question.category),
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      widget.question.category.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Attempts Left: $_remainingAttempts',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),
            Text(
              widget.question.questionText,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Answer Options:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children:
                  widget.question.answerOptions.map((option) {
                    return ElevatedButton(
                      onPressed:
                          _remainingAttempts > 0 && _resultMessage == null
                              ? () {
                                setState(() {
                                  _selectedAnswer = option;
                                  _remainingAttempts--;
                                  if (option == widget.question.correctAnswer) {
                                    _resultMessage = 'You won!';
                                  } else {
                                    if (_remainingAttempts > 0) {
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Wrong answer! Attempts left: $_remainingAttempts',
                                            style: TextStyle(
                                              color:
                                                  Theme.of(
                                                    context,
                                                  ).colorScheme.onPrimary,
                                            ),
                                          ),
                                          backgroundColor:
                                              Theme.of(
                                                context,
                                              ).colorScheme.primary,
                                        ),
                                      );
                                    }
                                    if (_remainingAttempts == 0) {
                                      _resultMessage =
                                          'Your answer is wrong.\n'
                                          'Correct answer: ${widget.question.correctAnswer}\n'
                                          'Explanation: ${widget.question.solution}';
                                    }
                                  }
                                });
                              }
                              : null,
                      child: Text(option),
                    );
                  }).toList(),
            ),

            const SizedBox(height: 16),
            const Text(
              'Hints:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            if (!_isHint1Visible) ...[
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isHint1Visible = true;
                    _hint1Message = 'Hint 1: ${widget.question.hint1}';
                  });
                },
                child: const Text('Show Hint 1'),
              ),
            ],
            if (_hint1Message != null) ...[
              const SizedBox(height: 16),
              Text(_hint1Message!),
            ],
            if (!_isHint2Visible) ...[
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isHint2Visible = true;
                    _hint2Message = 'Hint 2: ${widget.question.hint2}';
                  });
                },
                child: const Text('Show Hint 2'),
              ),
            ],
            if (_hint2Message != null) ...[
              const SizedBox(height: 16),
              Text(_hint2Message!),
            ],
            const SizedBox(height: 16),
            if (_resultMessage != null) ...[
              const SizedBox(height: 16),
              Text(
                _resultMessage!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color:
                      _resultMessage == 'You won!'
                          ? Theme.of(context).colorScheme.primary
                          : Colors.red,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
