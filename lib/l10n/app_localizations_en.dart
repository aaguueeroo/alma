// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Alma';

  @override
  String get newGame => 'New Game';

  @override
  String get loadGame => 'Load Game';

  @override
  String get achievements => 'Achievements';

  @override
  String get settings => 'Settings';

  @override
  String get soulWorld => 'Soul World';

  @override
  String livesRemaining(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count lives remaining',
      one: '1 life remaining',
    );
    return '$_temp0';
  }

  @override
  String get soulSubjects => 'Soul Subjects';

  @override
  String get chooseLife => 'Choose a Life';

  @override
  String get startLife => 'Start Life';

  @override
  String get nextYear => 'Next Year';

  @override
  String timeRemaining(int time) {
    return 'Time Remaining: $time';
  }

  @override
  String year(int year) {
    return 'Year $year';
  }

  @override
  String age(int age) {
    return 'Age $age';
  }

  @override
  String get skills => 'Skills';

  @override
  String get traits => 'Traits';

  @override
  String get habits => 'Habits';

  @override
  String get relationships => 'Relationships';

  @override
  String get education => 'Education';

  @override
  String get work => 'Work';

  @override
  String get health => 'Health';

  @override
  String get social => 'Social';

  @override
  String get intelligence => 'Intelligence';

  @override
  String get creativity => 'Creativity';

  @override
  String get communication => 'Communication';

  @override
  String get emotionalStability => 'Emotional Stability';

  @override
  String get fitness => 'Fitness';

  @override
  String get compassion => 'Compassion';

  @override
  String get discipline => 'Discipline';

  @override
  String get courage => 'Courage';

  @override
  String get wisdom => 'Wisdom';

  @override
  String get fun => 'Fun';

  @override
  String get humility => 'Humility';

  @override
  String get nirvana => 'Nirvana';

  @override
  String get nirvanaMessage => 'Your soul has achieved enlightenment.';

  @override
  String get gameOver => 'Game Over';

  @override
  String get gameOverMessage => 'Your soul has exhausted all its lives.';

  @override
  String get lifeSummary => 'Life Summary';

  @override
  String get death => 'Death';

  @override
  String get deleteSoul => 'Delete Soul';

  @override
  String get confirmDelete => 'Are you sure you want to delete this soul?';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get save => 'Save';

  @override
  String get back => 'Back';

  @override
  String get emptySaveSlot => 'Empty Slot';

  @override
  String get saveSlots => 'Save Slots';

  @override
  String get returnToMenu => 'Return to Menu';

  @override
  String get noSoulsYet => 'No souls yet. Create one to get started!';

  @override
  String get createSoul => 'Create Soul';

  @override
  String get soulName => 'Soul Name';

  @override
  String get passed => 'Passed';

  @override
  String get notPassed => 'Not Passed';

  @override
  String get actions => 'Actions';

  @override
  String get performAction => 'Perform Action';
}
