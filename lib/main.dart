//lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_basics/data/models/question.dart';
import 'package:flutter_basics/data/repositories/questions_repository.dart';
import 'package:flutter_basics/presentation/screens/add_question/add_question_screen.dart';
import 'package:flutter_basics/presentation/screens/home/home_screen.dart';
import 'package:flutter_basics/core/theme/theme.dart';
import 'package:flutter_basics/core/theme/text_theme_util.dart';
import 'package:flutter_basics/presentation/screens/home/question_detail_screen.dart';

void main() {
  final questionsRepository = QuestionsRepository();
  runApp(QuizPokerApp(questionsRepository: questionsRepository));
}

class QuizPokerApp extends StatelessWidget {
  final QuestionsRepository questionsRepository;

  const QuizPokerApp({super.key, required this.questionsRepository});

  @override
  Widget build(BuildContext context) {
    final textTheme = createTextTheme(context, 'Agbalumo', 'Roboto');
    final materialTheme = MaterialTheme(textTheme);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz Poker',
      theme: materialTheme.light(),
      initialRoute: '/',
      routes: {
        '/': (context) => QuizPokerHome(repository: questionsRepository),
        '/add_question':
            (context) => AddQuestionScreen(repository: questionsRepository),
      },
      onGenerateRoute: (settings) {
        if (settings.name == QuestionDetailScreen.routeName) {
          final question = settings.arguments as Question;
          return MaterialPageRoute(
            builder: (context) {
              return QuestionDetailScreen(question: question);
            },
          );
        }
        return null;
      },
    );
  }
}
