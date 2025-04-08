//lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_basics/models/question.dart';
import 'package:flutter_basics/screens/add_question_screen.dart';
import 'package:flutter_basics/screens/home_screen.dart';
import 'package:flutter_basics/theme.dart';
import 'package:flutter_basics/utils/text_theme_util.dart';
import 'package:flutter_basics/screens/question_detail_screen.dart';

void main() {
  runApp(const QuizPokerApp());
}

class QuizPokerApp extends StatelessWidget {
  const QuizPokerApp({super.key});

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
        '/': (context) => const QuizPokerHome(),
        '/add_question': (context) => const AddQuestionScreen(),
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
