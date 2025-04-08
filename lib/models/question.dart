// lib/models/question.dart
class Question {
  final String id;
  final String category;
  final String questionText;
  final List<String> answerOptions;
  final String correctAnswer;
  final String difficulty;
  final String? imageUrl;
  final Duration? timeLimit;
  final String hint1;
  final String hint2;
  final String solution;

  Question({
    required this.id,
    required this.category,
    required this.questionText,
    required this.answerOptions,
    required this.correctAnswer,
    required this.difficulty,
    this.imageUrl,
    this.timeLimit,
    required this.hint1,
    required this.hint2,
    required this.solution,
  });
}
