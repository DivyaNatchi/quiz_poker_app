// lib/screens/add_question_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_basics/models/question.dart';
import 'package:flutter_basics/utils/category_options.dart';
import 'package:flutter_basics/widgets/base_layout.dart';
import 'package:flutter_basics/data/questions.dart';
import 'package:flutter_basics/widgets/custom_text_from_field.dart';
import 'package:flutter_basics/widgets/section_title.dart';

class AddQuestionScreen extends StatefulWidget {
  const AddQuestionScreen({super.key});

  @override
  State<AddQuestionScreen> createState() => _AddQuestionScreenState();
}

class _AddQuestionScreenState extends State<AddQuestionScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedCategory;
  final List<String> _categoryOptions = categoryOptions;
  final _questionTextController = TextEditingController();
  final _answerOptionsController = TextEditingController();
  final _correctAnswerController = TextEditingController();
  String? _selectedDifficulty;
  final List<String> _difficultyOptions = ['Easy', 'Medium', 'Hard'];
  final _hint1Controller = TextEditingController();
  final _hint2Controller = TextEditingController();
  final _solutionController = TextEditingController();

  @override
  void dispose() {
    _questionTextController.dispose();
    _answerOptionsController.dispose();
    _correctAnswerController.dispose();
    _hint1Controller.dispose();
    _hint2Controller.dispose();
    _solutionController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Create a new Question object
      final newQuestion = Question(
        id: (myQuestions.length + 1).toString(),
        category: _selectedCategory!,
        questionText: _questionTextController.text,
        answerOptions: _answerOptionsController.text.split(','),
        correctAnswer: _correctAnswerController.text,
        difficulty: _selectedDifficulty!,
        hint1: _hint1Controller.text,
        hint2: _hint2Controller.text,
        solution: _solutionController.text,
      );

      setState(() {
        myQuestions.add(newQuestion);
      });

      // Clear the form
      _questionTextController.clear();
      _answerOptionsController.clear();
      _correctAnswerController.clear();
      _hint1Controller.clear();
      _hint2Controller.clear();
      _solutionController.clear();

      // Show a success message
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Question added!')));

      Navigator.pushReplacementNamed(context, '/');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      currentRoute: '/add_question',
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            SectionTitle(title: 'Add Question'),
            const SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Category',
                      labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      floatingLabelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      border: OutlineInputBorder(),
                    ),
                    value: _selectedCategory,
                    items:
                        _categoryOptions.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          );
                        }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedCategory = newValue;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please select a category';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    controller: _questionTextController,
                    labelText: 'Question Text',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the question text';
                      }
                      return null;
                    },
                    maxLines: 2,
                  ),
                  const SizedBox(height: 16),
                  LayoutBuilder(
                    builder: (
                      BuildContext context,
                      BoxConstraints constraints,
                    ) {
                      final isMobile = constraints.maxWidth < 600;
                      return CustomTextFormField(
                        controller: _answerOptionsController,
                        labelText:
                            isMobile
                                ? 'Answer Options(comma-separated,\nmust be 4 options)'
                                : 'Answer Options (comma-separated, must be 4 options)',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter answer options';
                          }
                          return null;
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    controller: _correctAnswerController,
                    labelText: 'Correct Answer',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the correct answer';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Difficulty',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 8),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children:
                              _difficultyOptions.map((String value) {
                                return RadioListTile<String>(
                                  title: Text(value),
                                  value: value,
                                  groupValue: _selectedDifficulty,
                                  onChanged: (newValue) {
                                    setState(() {
                                      _selectedDifficulty = newValue!;
                                    });
                                  },
                                );
                              }).toList(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    controller: _hint1Controller,
                    labelText: 'Hint 1',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Hint 1';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    controller: _hint2Controller,
                    labelText: 'Hint 2',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Hint 2';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomTextFormField(
                    controller: _solutionController,
                    labelText: 'Solution',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Solution';
                      }
                      return null;
                    },
                    maxLines: 3,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: const Text('Add Question'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
