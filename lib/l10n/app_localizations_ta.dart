// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appName => 'வினாடி வினா போக்கர்';

  @override
  String get welcomeMessage => 'வினாடி வினா போக்கருக்கு வரவேற்கிறோம்!';

  @override
  String get questionDetails => 'கேள்வி விவரங்கள்';

  @override
  String attemptsLeft(Object attempts) {
    return 'மீதமுள்ள முயற்சிகள்: $attempts';
  }

  @override
  String get answerOptions => 'பதில் விருப்பங்கள்';

  @override
  String showHint(Object hintNumber) {
    return 'குறிப்பை காண்பி $hintNumber';
  }

  @override
  String get youWon => 'நீங்கள் வெற்றி பெற்றீர்கள்!';

  @override
  String get yourAnswerIsWrong => 'உங்கள் பதில் தவறானது.';

  @override
  String correctAnswer(Object correctAnswer) {
    return 'சரியான பதில்: $correctAnswer';
  }

  @override
  String explanation(Object solution) {
    return 'விளக்கம்: $solution';
  }

  @override
  String get dismiss => 'மூடு';

  @override
  String wrongAnswer(Object attempts) {
    return 'தவறான பதில்! மீதமுள்ள முயற்சிகள்: $attempts';
  }

  @override
  String correctAnswerIs(Object correctAnswer) {
    return 'சரியான பதில்: $correctAnswer';
  }

  @override
  String get difficulty => 'சிரம நிலை';

  @override
  String get home => 'வீடு';

  @override
  String get addQuestion => 'கேள்வி சேர்';

  @override
  String get category_sports => 'விளையாட்டு';

  @override
  String get category_music => 'இசை';

  @override
  String get category_history => 'வரலாறு';

  @override
  String get category_movies => 'திரைப்படங்கள்';

  @override
  String get category_geography => 'புவியியல்';

  @override
  String get hints => 'குறிப்புகள்:';

  @override
  String get hint1 => 'குறிப்பு 1';

  @override
  String get hint2 => 'குறிப்பு 2';

  @override
  String get answerOptionsLabel => 'பதில் விருப்பங்கள் (கமா பிரிக்கப்பட்ட, 4 தனித்துவமான விருப்பங்கள் இருக்க வேண்டும்)';

  @override
  String get correctAnswerLabel => 'சரியான பதில்';

  @override
  String get solution => 'தீர்வு';

  @override
  String get category => 'வகை';

  @override
  String get selectCategory => 'தயவுசெய்து ஒரு வகையைத் தேர்ந்தெடுக்கவும்';

  @override
  String get enterQuestionText => 'தயவுசெய்து கேள்வி உரையை உள்ளிடவும்';

  @override
  String get enterSolution => 'தயவுசெய்து தீர்வை உள்ளிடவும்';

  @override
  String get enterAnswerOption => 'தயவுசெய்து பதில் விருப்பங்களை உள்ளிடவும்';

  @override
  String get enterCorrectAnswer => 'தயவுசெய்து சரியான பதிலை உள்ளிடவும்';

  @override
  String get enterHint1 => 'தயவுசெய்து குறிப்பை 1 உள்ளிடவும்';

  @override
  String get enterHint2 => 'தயவுசெய்து குறிப்பை 2 உள்ளிடவும்';

  @override
  String get enter => 'தயவுசெய்து உள்ளிடவும்';

  @override
  String get question1_text => '2018 ஆம் ஆண்டு FIFA உலகக் கோப்பையை வென்றது யார்?';

  @override
  String get question1_option1 => 'பிரான்ஸ்';

  @override
  String get question1_option2 => 'குரோஷியா';

  @override
  String get question1_option3 => 'ஜெர்மனி';

  @override
  String get question1_option4 => 'அர்ஜென்டினா';

  @override
  String get question1_difficulty => 'எளிதான';

  @override
  String get question1_hint1 => 'லெஸ் ப்ளூஸ்';

  @override
  String get question1_hint2 => 'அவர்களின் எதிரணி ஒரு சிறிய நாடு';

  @override
  String get question1_solution => '2018 ஆம் ஆண்டு FIFA உலகக் கோப்பையை பிரான்ஸ் வென்றது.';

  @override
  String get question2_text => 'வரலாற்றில் எந்த நாடு அதிக ஒலிம்பிக் தங்கப் பதக்கங்களை வென்றுள்ளது?';

  @override
  String get question2_option1 => 'அமெரிக்கா';

  @override
  String get question2_option2 => 'சீனா';

  @override
  String get question2_option3 => 'ரஷ்யா';

  @override
  String get question2_option4 => 'இங்கிலாந்து';

  @override
  String get question2_difficulty => 'நடுத்தரம்';

  @override
  String get question2_hint1 => 'நட்சத்திரங்கள் மற்றும் கோடுகள் நிலத்தைப் பற்றி சிந்தியுங்கள்.';

  @override
  String get question2_hint2 => 'ஹாலிவுட்';

  @override
  String get question2_solution => 'வரலாற்றில் அமெரிக்கா அதிக ஒலிம்பிக் தங்கப் பதக்கங்களை வென்றுள்ளது.';

  @override
  String get question3_text => '\"பாப் இசையின் ராஜா\" என்று அழைக்கப்படும் கலைஞர் யார்?';

  @override
  String get question3_option1 => 'எல்விஸ் பிரెస్லி';

  @override
  String get question3_option2 => 'மைக்கேல் ஜாக்சன்';

  @override
  String get question3_option3 => 'இளவரசன்';

  @override
  String get question3_option4 => 'பிரெடி மெர்குரி';

  @override
  String get question3_difficulty => 'எளிதான';

  @override
  String get question3_hint1 => 'மூன்வாக்கைப் பற்றி சிந்தியுங்கள்.';

  @override
  String get question3_hint2 => 'திரில்லர்';

  @override
  String get question3_solution => 'மைக்கேல் ஜாக்சன் \"பாப் இசையின் ராஜா\" என்று அழைக்கப்படுகிறார்.';

  @override
  String get question4_text => 'அமெரிக்காவின் முதல் ஜனாதிபதி யார்?';

  @override
  String get question4_option1 => 'ஆபிரகாம் லிங்கன்';

  @override
  String get question4_option2 => 'ஜார்ஜ் வாஷிங்டன்';

  @override
  String get question4_option3 => 'தாமஸ் ஜெபர்சன்';

  @override
  String get question4_option4 => 'ஜான் ஆடம்ஸ்';

  @override
  String get question4_difficulty => 'எளிதான';

  @override
  String get question4_hint1 => 'அவர் கான்டினென்டல் இராணுவத்திற்கு தலைமை தாங்கினார்.';

  @override
  String get question4_hint2 => 'அவர் பெயரில் ஒரு மாநிலம் உள்ளது.';

  @override
  String get question4_solution => 'ஜார்ஜ் வாஷிங்டன் அமெரிக்காவின் முதல் ஜனாதிபதி ஆவார்.';

  @override
  String get question5_text => '1994 இல் சிறந்த திரைப்படத்திற்கான ஆஸ்கார் விருதை வென்ற திரைப்படம் எது?';

  @override
  String get question5_option1 => 'ஃபாரஸ்ட் கம்ப்';

  @override
  String get question5_option2 => 'தி ஷாஷாங்க் மீட்பு';

  @override
  String get question5_option3 => 'பல்ப் ஃபிக்ஷன்';

  @override
  String get question5_option4 => 'சிங்க ராஜா';

  @override
  String get question5_difficulty => 'நடுத்தரம்';

  @override
  String get question5_hint1 => 'வாழ்க்கை என்பது சாக்லேட் பெட்டி போன்றது.';

  @override
  String get question5_hint2 => 'ஓடு ஃபாரஸ்ட், ஓடு!';

  @override
  String get question5_solution => '1994 இல் ஃபாரஸ்ட் கம்ப் சிறந்த திரைப்படத்திற்கான ஆஸ்கார் விருதை வென்றது.';

  @override
  String get question6_text => 'உலகின் மிகப்பெரிய பாலைவனம் எது?';

  @override
  String get question6_option1 => 'சஹாரா';

  @override
  String get question6_option2 => 'ஆர்க்டிக்';

  @override
  String get question6_option3 => 'அண்டார்டிக்';

  @override
  String get question6_option4 => 'கோபி';

  @override
  String get question6_difficulty => 'கடினமான';

  @override
  String get question6_hint1 => 'இது மிகவும் குளிரான பாலைவனம்.';

  @override
  String get question6_hint2 => 'பென்குயின்ஸ் அங்கு வாழ்கின்றன.';

  @override
  String get question6_solution => 'அண்டார்டிக் உலகின் மிகப்பெரிய பாலைவனம்.';

  @override
  String get question7_text => 'டென்னிஸில், பூஜ்ஜிய மதிப்பெண்ணுக்கான சொல் என்ன?';

  @override
  String get question7_option1 => 'காதல்';

  @override
  String get question7_option2 => 'டியூஸ்';

  @override
  String get question7_option3 => 'ஏஸ்';

  @override
  String get question7_option4 => 'தவறு';

  @override
  String get question7_difficulty => 'எளிதான';

  @override
  String get question7_hint1 => 'இது பாசம் என்று பொருள்படும் ஒரு சொல்.';

  @override
  String get question7_hint2 => '0-0';

  @override
  String get question7_solution => 'டென்னிஸில், பூஜ்ஜிய மதிப்பெண்ணுக்கான சொல் காதல்.';

  @override
  String get question8_text => 'எந்த கிளாசிக்கல் இசையமைப்பாளர் வாழ்க்கையில் பின்னர் காது கேளாதவராக ஆனார்?';

  @override
  String get question8_option1 => 'மொஸார்ட்';

  @override
  String get question8_option2 => 'பாக்';

  @override
  String get question8_option3 => 'பீத்தோவன்';

  @override
  String get question8_option4 => 'விவால்டி';

  @override
  String get question8_difficulty => 'நடுத்தரம்';

  @override
  String get question8_hint1 => 'அவர் 5வது சிம்பொனியை இசையமைத்தார்.';

  @override
  String get question8_hint2 => 'அவர் ஜெர்மானியர்.';

  @override
  String get question8_solution => 'பீத்தோவன் வாழ்க்கையில் பின்னர் காது கேளாதவராக ஆனார்.';

  @override
  String get question9_text => 'இரண்டாம் உலகப் போர் எந்த ஆண்டு முடிந்தது?';

  @override
  String get question9_option1 => '1942';

  @override
  String get question9_option2 => '1945';

  @override
  String get question9_option3 => '1948';

  @override
  String get question9_option4 => '1950';

  @override
  String get question9_difficulty => 'நடுத்தரம்';

  @override
  String get question9_hint1 => 'அணுகுண்டுக்கு பிறகு';

  @override
  String get question9_hint2 => 'ரூஸ்வெல்ட்டின் கடைசி ஆண்டு';

  @override
  String get question9_solution => 'இரண்டாம் உலகப் போர் 1945 இல் முடிந்தது.';

  @override
  String get question10_text => '\"டைட்டானிக்\" திரைப்படத்தில் ஜாக் டாசனாக நடித்தவர் யார்?';

  @override
  String get question10_option1 => 'பிராட் பிட்';

  @override
  String get question10_option2 => 'லியோனார்டோ டிகாப்ரியோ';

  @override
  String get question10_option3 => 'ஜானி டெப்';

  @override
  String get question10_option4 => 'மாட் டாமன்';

  @override
  String get question10_difficulty => 'எளிதான';

  @override
  String get question10_hint1 => 'அவர் \"தி வுல்ஃப் ஆஃப் வால் ஸ்ட்ரீட்\"டிலும் நடித்தார்.';

  @override
  String get question10_hint2 => 'அவர் \"தி ரெவனன்ட்\" திரைப்படத்திற்காக ஆஸ்கார் வென்றார்.';

  @override
  String get question10_solution => '\"டைட்டானிக்\" திரைப்படத்தில் ஜாக் டாசனாக லியோனார்டோ டிகாப்ரியோ நடித்தார்.';

  @override
  String get question11_text => 'ஆஸ்திரேலியாவின் தலைநகரம் எது?';

  @override
  String get question11_option1 => 'சிட்னி';

  @override
  String get question11_option2 => 'மெல்போர்ன்';

  @override
  String get question11_option3 => 'கான்பெர்ரா';

  @override
  String get question11_option4 => 'பிரிஸ்பேன்';

  @override
  String get question11_difficulty => 'எளிதான';

  @override
  String get question11_hint1 => 'இது மிகப்பெரிய நகரம் அல்ல';

  @override
  String get question11_hint2 => 'இது தலைநகராக வேண்டுமென்றே கட்டப்பட்டது';

  @override
  String get question11_solution => 'கான்பெர்ரா ஆஸ்திரேலியாவின் தலைநகரம் ஆகும்.';
}
