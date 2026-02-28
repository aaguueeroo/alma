import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

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
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Alma'**
  String get appTitle;

  /// No description provided for @newGame.
  ///
  /// In en, this message translates to:
  /// **'New Game'**
  String get newGame;

  /// No description provided for @loadGame.
  ///
  /// In en, this message translates to:
  /// **'Load Game'**
  String get loadGame;

  /// No description provided for @achievements.
  ///
  /// In en, this message translates to:
  /// **'Achievements'**
  String get achievements;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @soulWorld.
  ///
  /// In en, this message translates to:
  /// **'Soul World'**
  String get soulWorld;

  /// No description provided for @livesRemaining.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 life remaining} other{{count} lives remaining}}'**
  String livesRemaining(int count);

  /// No description provided for @soulSubjects.
  ///
  /// In en, this message translates to:
  /// **'Soul Subjects'**
  String get soulSubjects;

  /// No description provided for @chooseLife.
  ///
  /// In en, this message translates to:
  /// **'Choose a Life'**
  String get chooseLife;

  /// No description provided for @startLife.
  ///
  /// In en, this message translates to:
  /// **'Start Life'**
  String get startLife;

  /// No description provided for @nextYear.
  ///
  /// In en, this message translates to:
  /// **'Next Year'**
  String get nextYear;

  /// No description provided for @timeRemaining.
  ///
  /// In en, this message translates to:
  /// **'Time Remaining: {time}'**
  String timeRemaining(int time);

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'Year {year}'**
  String year(int year);

  /// No description provided for @age.
  ///
  /// In en, this message translates to:
  /// **'Age {age}'**
  String age(int age);

  /// No description provided for @skills.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get skills;

  /// No description provided for @traits.
  ///
  /// In en, this message translates to:
  /// **'Traits'**
  String get traits;

  /// No description provided for @habits.
  ///
  /// In en, this message translates to:
  /// **'Habits'**
  String get habits;

  /// No description provided for @relationships.
  ///
  /// In en, this message translates to:
  /// **'Relationships'**
  String get relationships;

  /// No description provided for @education.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get education;

  /// No description provided for @work.
  ///
  /// In en, this message translates to:
  /// **'Work'**
  String get work;

  /// No description provided for @health.
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get health;

  /// No description provided for @social.
  ///
  /// In en, this message translates to:
  /// **'Social'**
  String get social;

  /// No description provided for @intelligence.
  ///
  /// In en, this message translates to:
  /// **'Intelligence'**
  String get intelligence;

  /// No description provided for @creativity.
  ///
  /// In en, this message translates to:
  /// **'Creativity'**
  String get creativity;

  /// No description provided for @communication.
  ///
  /// In en, this message translates to:
  /// **'Communication'**
  String get communication;

  /// No description provided for @emotionalStability.
  ///
  /// In en, this message translates to:
  /// **'Emotional Stability'**
  String get emotionalStability;

  /// No description provided for @fitness.
  ///
  /// In en, this message translates to:
  /// **'Fitness'**
  String get fitness;

  /// No description provided for @compassion.
  ///
  /// In en, this message translates to:
  /// **'Compassion'**
  String get compassion;

  /// No description provided for @discipline.
  ///
  /// In en, this message translates to:
  /// **'Discipline'**
  String get discipline;

  /// No description provided for @courage.
  ///
  /// In en, this message translates to:
  /// **'Courage'**
  String get courage;

  /// No description provided for @wisdom.
  ///
  /// In en, this message translates to:
  /// **'Wisdom'**
  String get wisdom;

  /// No description provided for @fun.
  ///
  /// In en, this message translates to:
  /// **'Fun'**
  String get fun;

  /// No description provided for @humility.
  ///
  /// In en, this message translates to:
  /// **'Humility'**
  String get humility;

  /// No description provided for @nirvana.
  ///
  /// In en, this message translates to:
  /// **'Nirvana'**
  String get nirvana;

  /// No description provided for @nirvanaMessage.
  ///
  /// In en, this message translates to:
  /// **'Your soul has achieved enlightenment.'**
  String get nirvanaMessage;

  /// No description provided for @gameOver.
  ///
  /// In en, this message translates to:
  /// **'Game Over'**
  String get gameOver;

  /// No description provided for @gameOverMessage.
  ///
  /// In en, this message translates to:
  /// **'Your soul has exhausted all its lives.'**
  String get gameOverMessage;

  /// No description provided for @lifeSummary.
  ///
  /// In en, this message translates to:
  /// **'Life Summary'**
  String get lifeSummary;

  /// No description provided for @death.
  ///
  /// In en, this message translates to:
  /// **'Death'**
  String get death;

  /// No description provided for @deleteSoul.
  ///
  /// In en, this message translates to:
  /// **'Delete Soul'**
  String get deleteSoul;

  /// No description provided for @confirmDelete.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this soul?'**
  String get confirmDelete;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @emptySaveSlot.
  ///
  /// In en, this message translates to:
  /// **'Empty Slot'**
  String get emptySaveSlot;

  /// No description provided for @saveSlots.
  ///
  /// In en, this message translates to:
  /// **'Save Slots'**
  String get saveSlots;

  /// No description provided for @returnToMenu.
  ///
  /// In en, this message translates to:
  /// **'Return to Menu'**
  String get returnToMenu;

  /// No description provided for @noSoulsYet.
  ///
  /// In en, this message translates to:
  /// **'No souls yet. Create one to get started!'**
  String get noSoulsYet;

  /// No description provided for @createSoul.
  ///
  /// In en, this message translates to:
  /// **'Create Soul'**
  String get createSoul;

  /// No description provided for @soulName.
  ///
  /// In en, this message translates to:
  /// **'Soul Name'**
  String get soulName;

  /// No description provided for @passed.
  ///
  /// In en, this message translates to:
  /// **'Passed'**
  String get passed;

  /// No description provided for @notPassed.
  ///
  /// In en, this message translates to:
  /// **'Not Passed'**
  String get notPassed;

  /// No description provided for @actions.
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get actions;

  /// No description provided for @performAction.
  ///
  /// In en, this message translates to:
  /// **'Perform Action'**
  String get performAction;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
