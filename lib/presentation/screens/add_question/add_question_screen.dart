import 'package:flutter/material.dart';
import 'package:flutter_basics/data/models/question.dart';
import 'package:flutter_basics/core/constants/category_options.dart';
import 'package:flutter_basics/data/repositories/questions_repository.dart';
import 'package:flutter_basics/extensions/buildcontext/loc.dart';
import 'package:flutter_basics/widgets/base_layout.dart';
import 'package:flutter_basics/data/questions.dart';
import 'package:flutter_basics/presentation/components/display/section_title.dart';
import 'package:flutter_basics/presentation/screens/add_question/widgets/text_form_fields.dart'; // Import the new widget
import 'package:flutter_basics/presentation/screens/add_question/widgets/difficulty_selection.dart'; // Import the new widget
import 'package:flutter_basics/l10n/app_localizations.dart'; // Import AppLocalizations

class AddQuestionScreen extends StatefulWidget {
  final QuestionsRepository repository;

  const AddQuestionScreen({super.key, required this.repository});

  @override
  State<AddQuestionScreen> createState() => _AddQuestionScreenState();
}

class _AddQuestionScreenState extends State<AddQuestionScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedCategory;
  final List<String> _categoryOptions = categoryOptions;
  String? _selectedDifficulty;
  final List<String> _difficultyOptions = ['Easy', 'Medium', 'Hard'];

  // Store controllers in a map
  final Map<String, TextEditingController> _controllers = {
    'questionText': TextEditingController(),
    'answerOptions': TextEditingController(),
    'correctAnswer': TextEditingController(),
    'hint1': TextEditingController(),
    'hint2': TextEditingController(),
    'solution': TextEditingController(),
  };

  @override
  void dispose() {
    _controllers.forEach((key, controller) => controller.dispose());
    super.dispose();
  }

  // Custom validator function
  String? _validateField(String? value, String message) {
    if (value == null || value.isEmpty) {
      return message;
    }
    return null;
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final newQuestion = Question(
        id: (myQuestions.length + 1).toString(),
        category: _selectedCategory!,
        questionTextKey: _controllers['questionText']!.text,
        answerOptionKeys: _controllers['answerOptions']!.text.split(','),
        correctAnswerKey: _controllers['correctAnswer']!.text,
        difficultyKey: _selectedDifficulty!,
        hint1Key: _controllers['hint1']!.text,
        hint2Key: _controllers['hint2']!.text,
        solutionKey: _controllers['solution']!.text,
      );

      widget.repository.addQuestion(newQuestion);

      // Clear the form using the map
      _controllers.forEach((key, controller) => controller.clear());

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Question added!')));

      Navigator.pushReplacementNamed(context, '/');
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    return BaseLayout(
      currentRoute: '/add_question',
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            SectionTitle(title: l10n.addQuestion),
            const SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: l10n.category,
                      labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      floatingLabelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      border: const OutlineInputBorder(),
                    ),
                    value: _selectedCategory,
                    items:
                        _categoryOptions.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              context.getLocalizedCategory(
                                value,
                              ), // 👈 Localized display
                              style: themeData.textTheme.bodyMedium,
                            ),
                          );
                        }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedCategory = newValue;
                      });
                    },
                    validator:
                        (value) => _validateField(value, l10n.selectCategory),
                  ),

                  const SizedBox(height: 16),
                  TextFormFields(
                    controllers: _controllers,
                    validateField: _validateField,
                  ),
                  DifficultySelection(
                    selectedDifficulty: _selectedDifficulty,
                    difficultyOptions: _difficultyOptions,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedDifficulty = newValue;
                      });
                    },
                    themeData: themeData,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: Text(
                      l10n.addQuestion,
                      style: themeData.textTheme.labelLarge?.copyWith(
                        color: themeData.colorScheme.primary,
                      ),
                    ),
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
