// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Quiz Poker';

  @override
  String get welcomeMessage => 'Willkommen bei Quiz Poker!';

  @override
  String get questionDetails => 'Fragedetails';

  @override
  String attemptsLeft(Object attempts) {
    return 'Verbleibende Versuche: $attempts';
  }

  @override
  String get answerOptions => 'Antwortoptionen';

  @override
  String showHint(Object hintNumber) {
    return 'Hinweis anzeigen $hintNumber';
  }

  @override
  String get youWon => 'Du hast gewonnen!';

  @override
  String get yourAnswerIsWrong => 'Deine Antwort ist falsch.';

  @override
  String correctAnswer(Object correctAnswer) {
    return 'Richtige Antwort: $correctAnswer';
  }

  @override
  String explanation(Object solution) {
    return 'Erklärung: $solution';
  }

  @override
  String get dismiss => 'Schließen';

  @override
  String wrongAnswer(Object attempts) {
    return 'Falsche Antwort! Verbleibende Versuche: $attempts';
  }

  @override
  String correctAnswerIs(Object correctAnswer) {
    return 'Die richtige Antwort ist: $correctAnswer';
  }

  @override
  String get difficulty => 'Schwierigkeitsgrad';

  @override
  String get home => 'Startseite';

  @override
  String get addQuestion => 'Frage hinzufügen';

  @override
  String get category_sports => 'Sport';

  @override
  String get category_music => 'Musik';

  @override
  String get category_history => 'Geschichte';

  @override
  String get category_movies => 'Filme';

  @override
  String get category_geography => 'Geografie';

  @override
  String get hints => 'Hinweise:';

  @override
  String get hint1 => 'Hinweis 1';

  @override
  String get hint2 => 'Hinweis 2';

  @override
  String get answerOptionsLabel => 'Antwortoptionen (durch Kommas getrennt, müssen 4 und eindeutig sein)';

  @override
  String get correctAnswerLabel => 'Richtige Antwort';

  @override
  String get solution => 'Lösung';

  @override
  String get category => 'Kategorie';

  @override
  String get selectCategory => 'Bitte wählen Sie eine Kategorie aus';

  @override
  String get enterQuestionText => 'Bitte geben Sie den Fragetext ein';

  @override
  String get enterSolution => 'Bitte geben Sie die Lösung ein';

  @override
  String get enterAnswerOption => 'Bitte geben Sie die Antwortoptionen ein';

  @override
  String get enterCorrectAnswer => 'Bitte geben Sie die richtige Antwort ein';

  @override
  String get enterHint1 => 'Bitte geben Sie Hinweis 1 ein';

  @override
  String get enterHint2 => 'Bitte geben Sie Hinweis 2 ein';

  @override
  String get enter => 'Bitte geben Sie das ein';

  @override
  String get question1_text => 'Wer hat die FIFA Fussball-Weltmeisterschaft 2018 gewonnen?';

  @override
  String get question1_option1 => 'Frankreich';

  @override
  String get question1_option2 => 'Kroatien';

  @override
  String get question1_option3 => 'Deutschland';

  @override
  String get question1_option4 => 'Argentinien';

  @override
  String get question1_difficulty => 'Leicht';

  @override
  String get question1_hint1 => 'Les Bleus';

  @override
  String get question1_hint2 => 'Ihr Gegner war ein kleineres Land';

  @override
  String get question1_solution => 'Frankreich hat die FIFA Fussball-Weltmeisterschaft 2018 gewonnen.';

  @override
  String get question2_text => 'Welches Land hat die meisten olympischen Goldmedaillen in der Geschichte?';

  @override
  String get question2_option1 => 'USA';

  @override
  String get question2_option2 => 'China';

  @override
  String get question2_option3 => 'Russland';

  @override
  String get question2_option4 => 'UK';

  @override
  String get question2_difficulty => 'Mittel';

  @override
  String get question2_hint1 => 'Denken Sie an das Land der Sterne und Streifen.';

  @override
  String get question2_hint2 => 'Hollywood';

  @override
  String get question2_solution => 'Die USA hat die meisten olympischen Goldmedaillen in der Geschichte.';

  @override
  String get question3_text => 'Welcher Künstler ist bekannt als der \"King of Pop\"?';

  @override
  String get question3_option1 => 'Elvis Presley';

  @override
  String get question3_option2 => 'Michael Jackson';

  @override
  String get question3_option3 => 'Prince';

  @override
  String get question3_option4 => 'Freddie Mercury';

  @override
  String get question3_difficulty => 'Leicht';

  @override
  String get question3_hint1 => 'Denken Sie an den Moonwalk.';

  @override
  String get question3_hint2 => 'Thriller';

  @override
  String get question3_solution => 'Michael Jackson ist bekannt als der \"King of Pop\".';

  @override
  String get question4_text => 'Wer war der erste Präsident der Vereinigten Staaten?';

  @override
  String get question4_option1 => 'Abraham Lincoln';

  @override
  String get question4_option2 => 'George Washington';

  @override
  String get question4_option3 => 'Thomas Jefferson';

  @override
  String get question4_option4 => 'John Adams';

  @override
  String get question4_difficulty => 'Leicht';

  @override
  String get question4_hint1 => 'Er führte die Kontinentalarmee.';

  @override
  String get question4_hint2 => 'Nach ihm ist ein Bundesstaat benannt.';

  @override
  String get question4_solution => 'George Washington war der erste Präsident der Vereinigten Staaten.';

  @override
  String get question5_text => 'Welcher Film gewann 1994 den Oscar als bester Film?';

  @override
  String get question5_option1 => 'Forrest Gump';

  @override
  String get question5_option2 => 'Die Verurteilten';

  @override
  String get question5_option3 => 'Pulp Fiction';

  @override
  String get question5_option4 => 'König der Löwen';

  @override
  String get question5_difficulty => 'Mittel';

  @override
  String get question5_hint1 => 'Das Leben ist wie eine Schachtel Pralinen.';

  @override
  String get question5_hint2 => 'Lauf Forrest, lauf!';

  @override
  String get question5_solution => 'Forrest Gump gewann 1994 den Oscar als bester Film.';

  @override
  String get question6_text => 'Welche ist die größte Wüste der Welt?';

  @override
  String get question6_option1 => 'Sahara';

  @override
  String get question6_option2 => 'Arktis';

  @override
  String get question6_option3 => 'Antarktis';

  @override
  String get question6_option4 => 'Gobi';

  @override
  String get question6_difficulty => 'Schwer';

  @override
  String get question6_hint1 => 'Es ist eine sehr kalte Wüste.';

  @override
  String get question6_hint2 => 'Pinguine leben dort.';

  @override
  String get question6_solution => 'Die Antarktis ist die größte Wüste der Welt.';

  @override
  String get question7_text => 'Wie bezeichnet man im Tennis einen Spielstand von Null?';

  @override
  String get question7_option1 => 'Liebe';

  @override
  String get question7_option2 => 'Einstand';

  @override
  String get question7_option3 => 'Ass';

  @override
  String get question7_option4 => 'Fehler';

  @override
  String get question7_difficulty => 'Leicht';

  @override
  String get question7_hint1 => 'Es ist ein Wort, das Zuneigung bedeutet.';

  @override
  String get question7_hint2 => '0-0';

  @override
  String get question7_solution => 'Im Tennis ist die Bezeichnung für einen Spielstand von Null Liebe.';

  @override
  String get question8_text => 'Welcher klassische Komponist erblindete später im Leben?';

  @override
  String get question8_option1 => 'Mozart';

  @override
  String get question8_option2 => 'Bach';

  @override
  String get question8_option3 => 'Beethoven';

  @override
  String get question8_option4 => 'Vivaldi';

  @override
  String get question8_difficulty => 'Mittel';

  @override
  String get question8_hint1 => 'Er komponierte die 5. Sinfonie.';

  @override
  String get question8_hint2 => 'Er war Deutscher.';

  @override
  String get question8_solution => 'Beethoven erblindete später im Leben.';

  @override
  String get question9_text => 'In welchem Jahr endete der Zweite Weltkrieg?';

  @override
  String get question9_option1 => '1942';

  @override
  String get question9_option2 => '1945';

  @override
  String get question9_option3 => '1948';

  @override
  String get question9_option4 => '1950';

  @override
  String get question9_difficulty => 'Mittel';

  @override
  String get question9_hint1 => 'Nach dem Atombombenabwurf';

  @override
  String get question9_hint2 => 'Das letzte Jahr von Roosevelt';

  @override
  String get question9_solution => 'Der Zweite Weltkrieg endete im Jahr 1945.';

  @override
  String get question10_text => 'Wer spielte Jack Dawson im Film \"Titanic\"?';

  @override
  String get question10_option1 => 'Brad Pitt';

  @override
  String get question10_option2 => 'Leonardo DiCaprio';

  @override
  String get question10_option3 => 'Johnny Depp';

  @override
  String get question10_option4 => 'Matt Damon';

  @override
  String get question10_difficulty => 'Leicht';

  @override
  String get question10_hint1 => 'Er spielte auch in \"The Wolf of Wall Street\" mit.';

  @override
  String get question10_hint2 => 'Er gewann einen Oscar für \"The Revenant\".';

  @override
  String get question10_solution => 'Leonardo DiCaprio spielte Jack Dawson im Film \"Titanic\".';

  @override
  String get question11_text => 'Was ist die Hauptstadt von Australien?';

  @override
  String get question11_option1 => 'Sydney';

  @override
  String get question11_option2 => 'Melbourne';

  @override
  String get question11_option3 => 'Canberra';

  @override
  String get question11_option4 => 'Brisbane';

  @override
  String get question11_difficulty => 'Leicht';

  @override
  String get question11_hint1 => 'Es ist nicht die größte Stadt';

  @override
  String get question11_hint2 => 'Es wurde eigens als Hauptstadt gebaut';

  @override
  String get question11_solution => 'Canberra ist die Hauptstadt von Australien.';
}
