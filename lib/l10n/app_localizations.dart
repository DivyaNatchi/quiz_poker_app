import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_ta.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
    Locale('ta')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Quiz Poker'**
  String get appName;

  /// No description provided for @welcomeMessage.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Quiz Poker!'**
  String get welcomeMessage;

  /// No description provided for @questionDetails.
  ///
  /// In en, this message translates to:
  /// **'Question Details'**
  String get questionDetails;

  /// No description provided for @attemptsLeft.
  ///
  /// In en, this message translates to:
  /// **'Attempts Left: {attempts}'**
  String attemptsLeft(Object attempts);

  /// No description provided for @answerOptions.
  ///
  /// In en, this message translates to:
  /// **'Answer Options:'**
  String get answerOptions;

  /// No description provided for @showHint.
  ///
  /// In en, this message translates to:
  /// **'Show Hint {hintNumber}'**
  String showHint(Object hintNumber);

  /// No description provided for @youWon.
  ///
  /// In en, this message translates to:
  /// **'You won!'**
  String get youWon;

  /// No description provided for @yourAnswerIsWrong.
  ///
  /// In en, this message translates to:
  /// **'Your answer is wrong.'**
  String get yourAnswerIsWrong;

  /// No description provided for @correctAnswer.
  ///
  /// In en, this message translates to:
  /// **'Correct answer: {correctAnswer}'**
  String correctAnswer(Object correctAnswer);

  /// No description provided for @explanation.
  ///
  /// In en, this message translates to:
  /// **'Explanation: {solution}'**
  String explanation(Object solution);

  /// No description provided for @dismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get dismiss;

  /// No description provided for @wrongAnswer.
  ///
  /// In en, this message translates to:
  /// **'Wrong answer! Attempts left: {attempts}'**
  String wrongAnswer(Object attempts);

  /// No description provided for @correctAnswerIs.
  ///
  /// In en, this message translates to:
  /// **'Correct answer is: {correctAnswer}'**
  String correctAnswerIs(Object correctAnswer);

  /// Label for difficulty selection
  ///
  /// In en, this message translates to:
  /// **'Difficulty'**
  String get difficulty;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @addQuestion.
  ///
  /// In en, this message translates to:
  /// **'Add Question'**
  String get addQuestion;

  /// No description provided for @category_sports.
  ///
  /// In en, this message translates to:
  /// **'Sports'**
  String get category_sports;

  /// No description provided for @category_music.
  ///
  /// In en, this message translates to:
  /// **'Music'**
  String get category_music;

  /// No description provided for @category_history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get category_history;

  /// No description provided for @category_movies.
  ///
  /// In en, this message translates to:
  /// **'Movies'**
  String get category_movies;

  /// No description provided for @category_geography.
  ///
  /// In en, this message translates to:
  /// **'Geography'**
  String get category_geography;

  /// No description provided for @hints.
  ///
  /// In en, this message translates to:
  /// **'Hints:'**
  String get hints;

  /// No description provided for @hint1.
  ///
  /// In en, this message translates to:
  /// **'Hint 1'**
  String get hint1;

  /// No description provided for @hint2.
  ///
  /// In en, this message translates to:
  /// **'Hint 2'**
  String get hint2;

  /// No description provided for @answerOptionsLabel.
  ///
  /// In en, this message translates to:
  /// **'Answer Options(comma-separted, must be 4 options & unique)'**
  String get answerOptionsLabel;

  /// No description provided for @correctAnswerLabel.
  ///
  /// In en, this message translates to:
  /// **'Correct Answer'**
  String get correctAnswerLabel;

  /// No description provided for @solution.
  ///
  /// In en, this message translates to:
  /// **'Solution'**
  String get solution;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @selectCategory.
  ///
  /// In en, this message translates to:
  /// **'Please select a category'**
  String get selectCategory;

  /// No description provided for @enterQuestionText.
  ///
  /// In en, this message translates to:
  /// **'Please enter the question text'**
  String get enterQuestionText;

  /// No description provided for @enterSolution.
  ///
  /// In en, this message translates to:
  /// **'Please enter the solution'**
  String get enterSolution;

  /// No description provided for @enterAnswerOption.
  ///
  /// In en, this message translates to:
  /// **'Please enter the answer options'**
  String get enterAnswerOption;

  /// No description provided for @enterCorrectAnswer.
  ///
  /// In en, this message translates to:
  /// **'Please enter the correct answer'**
  String get enterCorrectAnswer;

  /// No description provided for @enterHint1.
  ///
  /// In en, this message translates to:
  /// **'Please enter hint1'**
  String get enterHint1;

  /// No description provided for @enterHint2.
  ///
  /// In en, this message translates to:
  /// **'Please enter hint2'**
  String get enterHint2;

  /// No description provided for @enter.
  ///
  /// In en, this message translates to:
  /// **'Plese enter'**
  String get enter;

  /// No description provided for @question1_text.
  ///
  /// In en, this message translates to:
  /// **'Who won the FIFA World Cup in 2018?'**
  String get question1_text;

  /// No description provided for @question1_option1.
  ///
  /// In en, this message translates to:
  /// **'France'**
  String get question1_option1;

  /// No description provided for @question1_option2.
  ///
  /// In en, this message translates to:
  /// **'Croatia'**
  String get question1_option2;

  /// No description provided for @question1_option3.
  ///
  /// In en, this message translates to:
  /// **'Germany'**
  String get question1_option3;

  /// No description provided for @question1_option4.
  ///
  /// In en, this message translates to:
  /// **'Argentina'**
  String get question1_option4;

  /// No description provided for @question1_difficulty.
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get question1_difficulty;

  /// No description provided for @question1_hint1.
  ///
  /// In en, this message translates to:
  /// **'Les Bleus'**
  String get question1_hint1;

  /// No description provided for @question1_hint2.
  ///
  /// In en, this message translates to:
  /// **'Their opponent was a smaller country'**
  String get question1_hint2;

  /// No description provided for @question1_solution.
  ///
  /// In en, this message translates to:
  /// **'France won the FIFA World Cup in 2018.'**
  String get question1_solution;

  /// No description provided for @question2_text.
  ///
  /// In en, this message translates to:
  /// **'Which country has the most Olympic gold medals in history?'**
  String get question2_text;

  /// No description provided for @question2_option1.
  ///
  /// In en, this message translates to:
  /// **'USA'**
  String get question2_option1;

  /// No description provided for @question2_option2.
  ///
  /// In en, this message translates to:
  /// **'China'**
  String get question2_option2;

  /// No description provided for @question2_option3.
  ///
  /// In en, this message translates to:
  /// **'Russia'**
  String get question2_option3;

  /// No description provided for @question2_option4.
  ///
  /// In en, this message translates to:
  /// **'UK'**
  String get question2_option4;

  /// No description provided for @question2_difficulty.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get question2_difficulty;

  /// No description provided for @question2_hint1.
  ///
  /// In en, this message translates to:
  /// **'Think about the land of stars and stripes.'**
  String get question2_hint1;

  /// No description provided for @question2_hint2.
  ///
  /// In en, this message translates to:
  /// **'Hollywood'**
  String get question2_hint2;

  /// No description provided for @question2_solution.
  ///
  /// In en, this message translates to:
  /// **'The USA has the most Olympic gold medals in history.'**
  String get question2_solution;

  /// No description provided for @question3_text.
  ///
  /// In en, this message translates to:
  /// **'Which artist is known as the \"King of Pop\"?'**
  String get question3_text;

  /// No description provided for @question3_option1.
  ///
  /// In en, this message translates to:
  /// **'Elvis Presley'**
  String get question3_option1;

  /// No description provided for @question3_option2.
  ///
  /// In en, this message translates to:
  /// **'Michael Jackson'**
  String get question3_option2;

  /// No description provided for @question3_option3.
  ///
  /// In en, this message translates to:
  /// **'Prince'**
  String get question3_option3;

  /// No description provided for @question3_option4.
  ///
  /// In en, this message translates to:
  /// **'Freddie Mercury'**
  String get question3_option4;

  /// No description provided for @question3_difficulty.
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get question3_difficulty;

  /// No description provided for @question3_hint1.
  ///
  /// In en, this message translates to:
  /// **'Think about the moonwalk.'**
  String get question3_hint1;

  /// No description provided for @question3_hint2.
  ///
  /// In en, this message translates to:
  /// **'Thriller'**
  String get question3_hint2;

  /// No description provided for @question3_solution.
  ///
  /// In en, this message translates to:
  /// **'Michael Jackson is known as the \"King of Pop\".'**
  String get question3_solution;

  /// No description provided for @question4_text.
  ///
  /// In en, this message translates to:
  /// **'Who was the first president of the United States?'**
  String get question4_text;

  /// No description provided for @question4_option1.
  ///
  /// In en, this message translates to:
  /// **'Abraham Lincoln'**
  String get question4_option1;

  /// No description provided for @question4_option2.
  ///
  /// In en, this message translates to:
  /// **'George Washington'**
  String get question4_option2;

  /// No description provided for @question4_option3.
  ///
  /// In en, this message translates to:
  /// **'Thomas Jefferson'**
  String get question4_option3;

  /// No description provided for @question4_option4.
  ///
  /// In en, this message translates to:
  /// **'John Adams'**
  String get question4_option4;

  /// No description provided for @question4_difficulty.
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get question4_difficulty;

  /// No description provided for @question4_hint1.
  ///
  /// In en, this message translates to:
  /// **'He led the Continental Army.'**
  String get question4_hint1;

  /// No description provided for @question4_hint2.
  ///
  /// In en, this message translates to:
  /// **'He has a state named after him.'**
  String get question4_hint2;

  /// No description provided for @question4_solution.
  ///
  /// In en, this message translates to:
  /// **'George Washington was the first president of the United States.'**
  String get question4_solution;

  /// No description provided for @question5_text.
  ///
  /// In en, this message translates to:
  /// **'Which movie won the Oscar for Best Picture in 1994?'**
  String get question5_text;

  /// No description provided for @question5_option1.
  ///
  /// In en, this message translates to:
  /// **'Forrest Gump'**
  String get question5_option1;

  /// No description provided for @question5_option2.
  ///
  /// In en, this message translates to:
  /// **'The Shawshank Redemption'**
  String get question5_option2;

  /// No description provided for @question5_option3.
  ///
  /// In en, this message translates to:
  /// **'Pulp Fiction'**
  String get question5_option3;

  /// No description provided for @question5_option4.
  ///
  /// In en, this message translates to:
  /// **'Lion King'**
  String get question5_option4;

  /// No description provided for @question5_difficulty.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get question5_difficulty;

  /// No description provided for @question5_hint1.
  ///
  /// In en, this message translates to:
  /// **'Life is like a box of chocolates.'**
  String get question5_hint1;

  /// No description provided for @question5_hint2.
  ///
  /// In en, this message translates to:
  /// **'Run Forrest, Run!'**
  String get question5_hint2;

  /// No description provided for @question5_solution.
  ///
  /// In en, this message translates to:
  /// **'Forrest Gump won the Oscar for Best Picture in 1994.'**
  String get question5_solution;

  /// No description provided for @question6_text.
  ///
  /// In en, this message translates to:
  /// **'Which is the largest desert in the world?'**
  String get question6_text;

  /// No description provided for @question6_option1.
  ///
  /// In en, this message translates to:
  /// **'Sahara'**
  String get question6_option1;

  /// No description provided for @question6_option2.
  ///
  /// In en, this message translates to:
  /// **'Arctic'**
  String get question6_option2;

  /// No description provided for @question6_option3.
  ///
  /// In en, this message translates to:
  /// **'Antarctic'**
  String get question6_option3;

  /// No description provided for @question6_option4.
  ///
  /// In en, this message translates to:
  /// **'Gobi'**
  String get question6_option4;

  /// No description provided for @question6_difficulty.
  ///
  /// In en, this message translates to:
  /// **'Hard'**
  String get question6_difficulty;

  /// No description provided for @question6_hint1.
  ///
  /// In en, this message translates to:
  /// **'It\'s a very cold desert.'**
  String get question6_hint1;

  /// No description provided for @question6_hint2.
  ///
  /// In en, this message translates to:
  /// **'Penguins live there.'**
  String get question6_hint2;

  /// No description provided for @question6_solution.
  ///
  /// In en, this message translates to:
  /// **'Antarctic is the largest desert in the world.'**
  String get question6_solution;

  /// No description provided for @question7_text.
  ///
  /// In en, this message translates to:
  /// **'In tennis, what is the term for a score of zero?'**
  String get question7_text;

  /// No description provided for @question7_option1.
  ///
  /// In en, this message translates to:
  /// **'Love'**
  String get question7_option1;

  /// No description provided for @question7_option2.
  ///
  /// In en, this message translates to:
  /// **'Deuce'**
  String get question7_option2;

  /// No description provided for @question7_option3.
  ///
  /// In en, this message translates to:
  /// **'Ace'**
  String get question7_option3;

  /// No description provided for @question7_option4.
  ///
  /// In en, this message translates to:
  /// **'Fault'**
  String get question7_option4;

  /// No description provided for @question7_difficulty.
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get question7_difficulty;

  /// No description provided for @question7_hint1.
  ///
  /// In en, this message translates to:
  /// **'It\'s a word that means affection.'**
  String get question7_hint1;

  /// No description provided for @question7_hint2.
  ///
  /// In en, this message translates to:
  /// **'0-0'**
  String get question7_hint2;

  /// No description provided for @question7_solution.
  ///
  /// In en, this message translates to:
  /// **'In tennis, the term for a score of zero is Love.'**
  String get question7_solution;

  /// No description provided for @question8_text.
  ///
  /// In en, this message translates to:
  /// **'Which classical composer became deaf later in life?'**
  String get question8_text;

  /// No description provided for @question8_option1.
  ///
  /// In en, this message translates to:
  /// **'Mozart'**
  String get question8_option1;

  /// No description provided for @question8_option2.
  ///
  /// In en, this message translates to:
  /// **'Bach'**
  String get question8_option2;

  /// No description provided for @question8_option3.
  ///
  /// In en, this message translates to:
  /// **'Beethoven'**
  String get question8_option3;

  /// No description provided for @question8_option4.
  ///
  /// In en, this message translates to:
  /// **'Vivaldi'**
  String get question8_option4;

  /// No description provided for @question8_difficulty.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get question8_difficulty;

  /// No description provided for @question8_hint1.
  ///
  /// In en, this message translates to:
  /// **'He composed the 5th Symphony.'**
  String get question8_hint1;

  /// No description provided for @question8_hint2.
  ///
  /// In en, this message translates to:
  /// **'He was German.'**
  String get question8_hint2;

  /// No description provided for @question8_solution.
  ///
  /// In en, this message translates to:
  /// **'Beethoven became deaf later in life.'**
  String get question8_solution;

  /// No description provided for @question9_text.
  ///
  /// In en, this message translates to:
  /// **'In which year did World War II end?'**
  String get question9_text;

  /// No description provided for @question9_option1.
  ///
  /// In en, this message translates to:
  /// **'1942'**
  String get question9_option1;

  /// No description provided for @question9_option2.
  ///
  /// In en, this message translates to:
  /// **'1945'**
  String get question9_option2;

  /// No description provided for @question9_option3.
  ///
  /// In en, this message translates to:
  /// **'1948'**
  String get question9_option3;

  /// No description provided for @question9_option4.
  ///
  /// In en, this message translates to:
  /// **'1950'**
  String get question9_option4;

  /// No description provided for @question9_difficulty.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get question9_difficulty;

  /// No description provided for @question9_hint1.
  ///
  /// In en, this message translates to:
  /// **'After the atomic bomb'**
  String get question9_hint1;

  /// No description provided for @question9_hint2.
  ///
  /// In en, this message translates to:
  /// **'The last year of Roosevelt'**
  String get question9_hint2;

  /// No description provided for @question9_solution.
  ///
  /// In en, this message translates to:
  /// **'World War II ended in 1945.'**
  String get question9_solution;

  /// No description provided for @question10_text.
  ///
  /// In en, this message translates to:
  /// **'Who played Jack Dawson in the movie \"Titanic\"?'**
  String get question10_text;

  /// No description provided for @question10_option1.
  ///
  /// In en, this message translates to:
  /// **'Brad Pitt'**
  String get question10_option1;

  /// No description provided for @question10_option2.
  ///
  /// In en, this message translates to:
  /// **'Leonardo DiCaprio'**
  String get question10_option2;

  /// No description provided for @question10_option3.
  ///
  /// In en, this message translates to:
  /// **'Johnny Depp'**
  String get question10_option3;

  /// No description provided for @question10_option4.
  ///
  /// In en, this message translates to:
  /// **'Matt Damon'**
  String get question10_option4;

  /// No description provided for @question10_difficulty.
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get question10_difficulty;

  /// No description provided for @question10_hint1.
  ///
  /// In en, this message translates to:
  /// **'He also starred in \"The Wolf of Wall Street.\"'**
  String get question10_hint1;

  /// No description provided for @question10_hint2.
  ///
  /// In en, this message translates to:
  /// **'He won an Oscar for \"The Revenant.\"'**
  String get question10_hint2;

  /// No description provided for @question10_solution.
  ///
  /// In en, this message translates to:
  /// **'Leonardo DiCaprio played Jack Dawson in the movie \"Titanic\".'**
  String get question10_solution;

  /// No description provided for @question11_text.
  ///
  /// In en, this message translates to:
  /// **'What is the capital city of Australia?'**
  String get question11_text;

  /// No description provided for @question11_option1.
  ///
  /// In en, this message translates to:
  /// **'Sydney'**
  String get question11_option1;

  /// No description provided for @question11_option2.
  ///
  /// In en, this message translates to:
  /// **'Melbourne'**
  String get question11_option2;

  /// No description provided for @question11_option3.
  ///
  /// In en, this message translates to:
  /// **'Canberra'**
  String get question11_option3;

  /// No description provided for @question11_option4.
  ///
  /// In en, this message translates to:
  /// **'Brisbane'**
  String get question11_option4;

  /// No description provided for @question11_difficulty.
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get question11_difficulty;

  /// No description provided for @question11_hint1.
  ///
  /// In en, this message translates to:
  /// **'It is not the largest city'**
  String get question11_hint1;

  /// No description provided for @question11_hint2.
  ///
  /// In en, this message translates to:
  /// **'It was purpose-built as the capital'**
  String get question11_hint2;

  /// No description provided for @question11_solution.
  ///
  /// In en, this message translates to:
  /// **'Canberra is the capital city of Australia.'**
  String get question11_solution;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en', 'ta'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return AppLocalizationsDe();
    case 'en': return AppLocalizationsEn();
    case 'ta': return AppLocalizationsTa();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
