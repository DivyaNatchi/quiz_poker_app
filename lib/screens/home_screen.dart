// lib/screens/home_screen.dart
import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/data/questions.dart';
import 'package:flutter_basics/models/question.dart';
import 'package:flutter_basics/widgets/question_item.dart';
import 'package:flutter_basics/screens/question_detail_screen.dart';
import 'package:flutter_basics/widgets/base_layout.dart';
import 'package:flutter_basics/widgets/section_title.dart';

class QuizPokerHome extends StatefulWidget {
  const QuizPokerHome({super.key});

  @override
  State<QuizPokerHome> createState() => _QuizPokerHomeState();
}

class _QuizPokerHomeState extends State<QuizPokerHome> {
  List<Question> currentQuestions = List.from(myQuestions);
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return BaseLayout(
      currentRoute: '/',
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final random = Random();
            final randomIndex = random.nextInt(currentQuestions.length);
            final randomQuestion = currentQuestions[randomIndex];

            Navigator.pushNamed(
              context,
              QuestionDetailScreen.routeName,
              arguments: randomQuestion,
            );
          },
          child: const Icon(Icons.shuffle),
        ),
        body: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
          ),
          child: Listener(
            onPointerSignal: (PointerSignalEvent event) {
              if (event is PointerScrollEvent) {
                double newOffset =
                    _scrollController.offset + event.scrollDelta.dy;
                newOffset = newOffset.clamp(
                  _scrollController.position.minScrollExtent,
                  _scrollController.position.maxScrollExtent,
                );
                _scrollController.jumpTo(newOffset);
              }
            },
            child: Scrollbar(
              controller: _scrollController,
              thumbVisibility: false,
              interactive: true,
              child: Column(
                children: [
                  SectionTitle(title: 'Welcome to Quiz Poker!'),
                  const SizedBox(height: 20),
                  Expanded(
                    child:
                        isSmallScreen
                            ? ListView.builder(
                              controller: _scrollController,
                              itemCount: currentQuestions.length,
                              itemBuilder: (context, index) {
                                return QuestionItem(
                                  question: currentQuestions[index],
                                );
                              },
                            )
                            : SingleChildScrollView(
                              controller: _scrollController,
                              scrollDirection: Axis.horizontal,
                              physics: const AlwaysScrollableScrollPhysics(),
                              child: Row(
                                // Use Row instead of Flex
                                children:
                                    currentQuestions.map((question) {
                                      return SizedBox(
                                        width: 300,
                                        child: QuestionItem(question: question),
                                      );
                                    }).toList(),
                              ),
                            ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
