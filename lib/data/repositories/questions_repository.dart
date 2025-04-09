import 'dart:math';

import 'package:flutter_basics/data/questions.dart';
import '../models/question.dart';

class QuestionsRepository {
  // Move the existing questions list here
  final List<Question> _questions =
      myQuestions; // Initially use existing questions

  // Get all questions
  List<Question> getAllQuestions() {
    return [..._questions]; // Return a copy to prevent direct modification
  }

  // Add a new question
  void addQuestion(Question question) {
    _questions.add(question);
  }

  // Get questions by category
  List<Question> getQuestionsByCategory(String category) {
    return _questions
        .where(
          (question) =>
              question.category.toLowerCase() == category.toLowerCase(),
        )
        .toList();
  }

  // Get random question
  Question getRandomQuestion() {
    final random = Random();
    final randomIndex = random.nextInt(_questions.length);
    return _questions[randomIndex];
  }
}
