import 'package:flutter/material.dart';
import 'package:flutter_basics/data/models/question.dart';
import 'package:flutter_basics/core/utils/helpers.dart';
import 'package:flutter_basics/presentation/screens/home/widgets/hints_section.dart';

class QuestionDetailScreen extends StatefulWidget {
  static const routeName = '/question_detail';
  final Question question;

  const QuestionDetailScreen({super.key, required this.question});

  @override
  State<QuestionDetailScreen> createState() => _QuestionDetailScreenState();
}

class _QuestionDetailScreenState extends State<QuestionDetailScreen>
    with SingleTickerProviderStateMixin {
  int _remainingAttempts = 3;
  String? _selectedAnswer;
  String? _resultMessage;
  bool _isHint1Visible = false;
  bool _isHint2Visible = false;
  String? _hint1Message;
  String? _hint2Message;
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  bool _showBanner = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, -2.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _showHint1() {
    setState(() {
      _isHint1Visible = true;
      _hint1Message = 'Hint 1: ${widget.question.hint1}';
    });
  }

  void _showHint2() {
    setState(() {
      _isHint2Visible = true;
      _hint2Message = 'Hint 2: ${widget.question.hint2}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question Details'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        children: [
          if (_showBanner)
            MaterialBanner(
              content: Text('Wrong answer! Attempts left: $_remainingAttempts'),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      _showBanner = false;
                    });
                  },
                  child: const Text('Dismiss'),
                ),
              ],
            ),
          Expanded(
            child: SingleChildScrollView(
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
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
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
                                        if (option ==
                                            widget.question.correctAnswer) {
                                          _resultMessage = 'You won!';
                                          _animationController.forward();
                                        } else {
                                          _showBanner = true;
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
                  HintsSection(
                    isHint1Visible: _isHint1Visible,
                    isHint2Visible: _isHint2Visible,
                    hint1Message: _hint1Message,
                    hint2Message: _hint2Message,
                    onShowHint1: _showHint1,
                    onShowHint2: _showHint2,
                  ),
                  const SizedBox(height: 16),
                  if (_resultMessage != null)
                    SlideTransition(
                      position: _slideAnimation,
                      child: Center(
                        child: Text(
                          _resultMessage!,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color:
                                _resultMessage == 'You won!'
                                    ? Theme.of(context).colorScheme.primary
                                    : Colors.red,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
