import 'package:flutter/material.dart';
import 'package:flutter_basics/data/models/question.dart';
import 'package:flutter_basics/extensions/localization_get.dart';
import 'package:flutter_basics/presentation/screens/home/widgets/hints_section.dart';
import 'package:flutter_basics/presentation/screens/home/widgets/answer_options.dart';
import 'package:flutter_basics/presentation/screens/home/widgets/question_header.dart';
import 'package:flutter_basics/l10n/app_localizations.dart'; // Import AppLocalizations

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
    final l10n = AppLocalizations.of(context)!;
    setState(() {
      _isHint1Visible = true;
      _hint1Message = 'Hint 1: ${l10n.get(widget.question.hint1Key)}';
    });
  }

  void _showHint2() {
    final l10n = AppLocalizations.of(context)!;
    setState(() {
      _isHint2Visible = true;
      _hint2Message = 'Hint 2: ${l10n.get(widget.question.hint2Key)}';
    });
  }

  void _handleAnswerSelected(String optionKey) {
    final l10n = AppLocalizations.of(context)!;
    setState(() {
      _selectedAnswer = optionKey;
      _remainingAttempts--;
      if (optionKey == widget.question.correctAnswerKey) {
        _resultMessage = l10n.youWon;
        _animationController.forward();
      } else {
        _showBanner = true;
        if (_remainingAttempts == 0) {
          _resultMessage =
              '${l10n.yourAnswerIsWrong}\n${l10n.correctAnswer(l10n.get(widget.question.correctAnswerKey))}\n${l10n.explanation(l10n.get(widget.question.solutionKey))}';

          _animationController.forward();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.questionDetails),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              if (_showBanner)
                MaterialBanner(
                  content: Text(
                    l10n.wrongAnswer(_remainingAttempts),
                    style: themeData.textTheme.labelMedium,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _showBanner = false;
                        });
                      },
                      child: Text(
                        l10n.dismiss,
                        style: themeData.textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QuestionHeader(
                        question: widget.question,
                        remainingAttempts: _remainingAttempts,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        l10n.get(widget.question.questionTextKey),
                        style: themeData.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        l10n.answerOptions,
                        style: themeData.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      AnswerOptions(
                        question: widget.question,
                        selectedAnswer: _selectedAnswer,
                        remainingAttempts: _remainingAttempts,
                        resultMessage: _resultMessage,
                        onAnswerSelected: _handleAnswerSelected,
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
                              style: themeData.textTheme.headlineMedium
                                  ?.copyWith(
                                    color:
                                        _resultMessage == l10n.youWon
                                            ? Theme.of(
                                              context,
                                            ).colorScheme.primary
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
          if (_resultMessage != null)
            Container(
              width: double.infinity,
              height: double.infinity,
              color: const Color.fromARGB(150, 0, 0, 0),
            ),
        ],
      ),
    );
  }
}
