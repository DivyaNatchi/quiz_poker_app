// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Quiz Poker';

  @override
  String get welcomeMessage => 'Welcome to Quiz Poker!';

  @override
  String get questionDetails => 'Question Details';

  @override
  String attemptsLeft(Object attempts) {
    return 'Attempts Left: $attempts';
  }

  @override
  String get answerOptions => 'Answer Options:';

  @override
  String showHint(Object hintNumber) {
    return 'Show Hint $hintNumber';
  }

  @override
  String get youWon => 'You won!';

  @override
  String get yourAnswerIsWrong => 'Your answer is wrong.';

  @override
  String correctAnswer(Object correctAnswer) {
    return 'Correct answer: $correctAnswer';
  }

  @override
  String explanation(Object solution) {
    return 'Explanation: $solution';
  }

  @override
  String get dismiss => 'Dismiss';

  @override
  String wrongAnswer(Object attempts) {
    return 'Wrong answer! Attempts left: $attempts';
  }

  @override
  String correctAnswerIs(Object correctAnswer) {
    return 'Correct answer is: $correctAnswer';
  }

  @override
  String get difficulty => 'Difficulty';

  @override
  String get home => 'Home';

  @override
  String get addQuestion => 'Add Question';

  @override
  String get category_sports => 'Sports';

  @override
  String get category_music => 'Music';

  @override
  String get category_history => 'History';

  @override
  String get category_movies => 'Movies';

  @override
  String get category_geography => 'Geography';

  @override
  String get hints => 'Hints:';

  @override
  String get hint1 => 'Hint 1';

  @override
  String get hint2 => 'Hint 2';

  @override
  String get answerOptionsLabel => 'Answer Options(comma-separted, must be 4 options & unique)';

  @override
  String get correctAnswerLabel => 'Correct Answer';

  @override
  String get solution => 'Solution';

  @override
  String get category => 'Category';

  @override
  String get selectCategory => 'Please select a category';

  @override
  String get enterQuestionText => 'Please enter the question text';

  @override
  String get enterSolution => 'Please enter the solution';

  @override
  String get enterAnswerOption => 'Please enter the answer options';

  @override
  String get enterCorrectAnswer => 'Please enter the correct answer';

  @override
  String get enterHint1 => 'Please enter hint1';

  @override
  String get enterHint2 => 'Please enter hint2';

  @override
  String get enter => 'Plese enter';

  @override
  String get question1_text => 'Who won the FIFA World Cup in 2018?';

  @override
  String get question1_option1 => 'France';

  @override
  String get question1_option2 => 'Croatia';

  @override
  String get question1_option3 => 'Germany';

  @override
  String get question1_option4 => 'Argentina';

  @override
  String get question1_difficulty => 'Easy';

  @override
  String get question1_hint1 => 'Les Bleus';

  @override
  String get question1_hint2 => 'Their opponent was a smaller country';

  @override
  String get question1_solution => 'France won the FIFA World Cup in 2018.';

  @override
  String get question2_text => 'Which country has the most Olympic gold medals in history?';

  @override
  String get question2_option1 => 'USA';

  @override
  String get question2_option2 => 'China';

  @override
  String get question2_option3 => 'Russia';

  @override
  String get question2_option4 => 'UK';

  @override
  String get question2_difficulty => 'Medium';

  @override
  String get question2_hint1 => 'Think about the land of stars and stripes.';

  @override
  String get question2_hint2 => 'Hollywood';

  @override
  String get question2_solution => 'The USA has the most Olympic gold medals in history.';

  @override
  String get question3_text => 'Which artist is known as the \"King of Pop\"?';

  @override
  String get question3_option1 => 'Elvis Presley';

  @override
  String get question3_option2 => 'Michael Jackson';

  @override
  String get question3_option3 => 'Prince';

  @override
  String get question3_option4 => 'Freddie Mercury';

  @override
  String get question3_difficulty => 'Easy';

  @override
  String get question3_hint1 => 'Think about the moonwalk.';

  @override
  String get question3_hint2 => 'Thriller';

  @override
  String get question3_solution => 'Michael Jackson is known as the \"King of Pop\".';

  @override
  String get question4_text => 'Who was the first president of the United States?';

  @override
  String get question4_option1 => 'Abraham Lincoln';

  @override
  String get question4_option2 => 'George Washington';

  @override
  String get question4_option3 => 'Thomas Jefferson';

  @override
  String get question4_option4 => 'John Adams';

  @override
  String get question4_difficulty => 'Easy';

  @override
  String get question4_hint1 => 'He led the Continental Army.';

  @override
  String get question4_hint2 => 'He has a state named after him.';

  @override
  String get question4_solution => 'George Washington was the first president of the United States.';

  @override
  String get question5_text => 'Which movie won the Oscar for Best Picture in 1994?';

  @override
  String get question5_option1 => 'Forrest Gump';

  @override
  String get question5_option2 => 'The Shawshank Redemption';

  @override
  String get question5_option3 => 'Pulp Fiction';

  @override
  String get question5_option4 => 'Lion King';

  @override
  String get question5_difficulty => 'Medium';

  @override
  String get question5_hint1 => 'Life is like a box of chocolates.';

  @override
  String get question5_hint2 => 'Run Forrest, Run!';

  @override
  String get question5_solution => 'Forrest Gump won the Oscar for Best Picture in 1994.';

  @override
  String get question6_text => 'Which is the largest desert in the world?';

  @override
  String get question6_option1 => 'Sahara';

  @override
  String get question6_option2 => 'Arctic';

  @override
  String get question6_option3 => 'Antarctic';

  @override
  String get question6_option4 => 'Gobi';

  @override
  String get question6_difficulty => 'Hard';

  @override
  String get question6_hint1 => 'It\'s a very cold desert.';

  @override
  String get question6_hint2 => 'Penguins live there.';

  @override
  String get question6_solution => 'Antarctic is the largest desert in the world.';

  @override
  String get question7_text => 'In tennis, what is the term for a score of zero?';

  @override
  String get question7_option1 => 'Love';

  @override
  String get question7_option2 => 'Deuce';

  @override
  String get question7_option3 => 'Ace';

  @override
  String get question7_option4 => 'Fault';

  @override
  String get question7_difficulty => 'Easy';

  @override
  String get question7_hint1 => 'It\'s a word that means affection.';

  @override
  String get question7_hint2 => '0-0';

  @override
  String get question7_solution => 'In tennis, the term for a score of zero is Love.';

  @override
  String get question8_text => 'Which classical composer became deaf later in life?';

  @override
  String get question8_option1 => 'Mozart';

  @override
  String get question8_option2 => 'Bach';

  @override
  String get question8_option3 => 'Beethoven';

  @override
  String get question8_option4 => 'Vivaldi';

  @override
  String get question8_difficulty => 'Medium';

  @override
  String get question8_hint1 => 'He composed the 5th Symphony.';

  @override
  String get question8_hint2 => 'He was German.';

  @override
  String get question8_solution => 'Beethoven became deaf later in life.';

  @override
  String get question9_text => 'In which year did World War II end?';

  @override
  String get question9_option1 => '1942';

  @override
  String get question9_option2 => '1945';

  @override
  String get question9_option3 => '1948';

  @override
  String get question9_option4 => '1950';

  @override
  String get question9_difficulty => 'Medium';

  @override
  String get question9_hint1 => 'After the atomic bomb';

  @override
  String get question9_hint2 => 'The last year of Roosevelt';

  @override
  String get question9_solution => 'World War II ended in 1945.';

  @override
  String get question10_text => 'Who played Jack Dawson in the movie \"Titanic\"?';

  @override
  String get question10_option1 => 'Brad Pitt';

  @override
  String get question10_option2 => 'Leonardo DiCaprio';

  @override
  String get question10_option3 => 'Johnny Depp';

  @override
  String get question10_option4 => 'Matt Damon';

  @override
  String get question10_difficulty => 'Easy';

  @override
  String get question10_hint1 => 'He also starred in \"The Wolf of Wall Street.\"';

  @override
  String get question10_hint2 => 'He won an Oscar for \"The Revenant.\"';

  @override
  String get question10_solution => 'Leonardo DiCaprio played Jack Dawson in the movie \"Titanic\".';

  @override
  String get question11_text => 'What is the capital city of Australia?';

  @override
  String get question11_option1 => 'Sydney';

  @override
  String get question11_option2 => 'Melbourne';

  @override
  String get question11_option3 => 'Canberra';

  @override
  String get question11_option4 => 'Brisbane';

  @override
  String get question11_difficulty => 'Easy';

  @override
  String get question11_hint1 => 'It is not the largest city';

  @override
  String get question11_hint2 => 'It was purpose-built as the capital';

  @override
  String get question11_solution => 'Canberra is the capital city of Australia.';
}
