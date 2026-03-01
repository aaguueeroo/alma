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

  /// No description provided for @continueSoul.
  ///
  /// In en, this message translates to:
  /// **'Continue Soul'**
  String get continueSoul;

  /// No description provided for @createNewSoul.
  ///
  /// In en, this message translates to:
  /// **'Create New Soul'**
  String get createNewSoul;

  /// No description provided for @archive.
  ///
  /// In en, this message translates to:
  /// **'Archive'**
  String get archive;

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

  /// No description provided for @continueLife.
  ///
  /// In en, this message translates to:
  /// **'Continue Life'**
  String get continueLife;

  /// No description provided for @currentLifeInfo.
  ///
  /// In en, this message translates to:
  /// **'{templateName} • Year {year}, Age {age}'**
  String currentLifeInfo(String templateName, int year, int age);

  /// No description provided for @tabWork.
  ///
  /// In en, this message translates to:
  /// **'Work'**
  String get tabWork;

  /// No description provided for @tabEducation.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get tabEducation;

  /// No description provided for @tabLife.
  ///
  /// In en, this message translates to:
  /// **'Life'**
  String get tabLife;

  /// No description provided for @tabHealth.
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get tabHealth;

  /// No description provided for @tabRelations.
  ///
  /// In en, this message translates to:
  /// **'Relations'**
  String get tabRelations;

  /// No description provided for @store.
  ///
  /// In en, this message translates to:
  /// **'Store'**
  String get store;

  /// No description provided for @exitLife.
  ///
  /// In en, this message translates to:
  /// **'Exit Life'**
  String get exitLife;

  /// No description provided for @exitLifeConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Leave this life?'**
  String get exitLifeConfirmTitle;

  /// No description provided for @exitLifeConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'You will return to the soul world. Your progress is saved.'**
  String get exitLifeConfirmMessage;

  /// No description provided for @notImplementedYet.
  ///
  /// In en, this message translates to:
  /// **'Not yet implemented'**
  String get notImplementedYet;

  /// No description provided for @nextYearSkipRemaining.
  ///
  /// In en, this message translates to:
  /// **'Next Year (skip remaining)'**
  String get nextYearSkipRemaining;

  /// No description provided for @moneyAmount.
  ///
  /// In en, this message translates to:
  /// **'\${amount}'**
  String moneyAmount(int amount);

  /// No description provided for @jobTitle.
  ///
  /// In en, this message translates to:
  /// **'Job'**
  String get jobTitle;

  /// No description provided for @salary.
  ///
  /// In en, this message translates to:
  /// **'Salary'**
  String get salary;

  /// No description provided for @salaryAmount.
  ///
  /// In en, this message translates to:
  /// **'\${amount}/yr'**
  String salaryAmount(int amount);

  /// No description provided for @getJob.
  ///
  /// In en, this message translates to:
  /// **'Get Job'**
  String get getJob;

  /// No description provided for @jobActions.
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get jobActions;

  /// No description provided for @noWorkHistory.
  ///
  /// In en, this message translates to:
  /// **'No work history yet'**
  String get noWorkHistory;

  /// No description provided for @noWorkEvents.
  ///
  /// In en, this message translates to:
  /// **'No work events yet'**
  String get noWorkEvents;

  /// No description provided for @effort.
  ///
  /// In en, this message translates to:
  /// **'Effort'**
  String get effort;

  /// No description provided for @cv.
  ///
  /// In en, this message translates to:
  /// **'CV'**
  String get cv;

  /// No description provided for @availableJobs.
  ///
  /// In en, this message translates to:
  /// **'Available Jobs'**
  String get availableJobs;

  /// No description provided for @noJobsAvailable.
  ///
  /// In en, this message translates to:
  /// **'No jobs available yet'**
  String get noJobsAvailable;

  /// No description provided for @studyTitle.
  ///
  /// In en, this message translates to:
  /// **'Studies'**
  String get studyTitle;

  /// No description provided for @grade.
  ///
  /// In en, this message translates to:
  /// **'Grade'**
  String get grade;

  /// No description provided for @enroll.
  ///
  /// In en, this message translates to:
  /// **'Enroll'**
  String get enroll;

  /// No description provided for @studyActions.
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get studyActions;

  /// No description provided for @noStudyHistory.
  ///
  /// In en, this message translates to:
  /// **'No degrees obtained yet'**
  String get noStudyHistory;

  /// No description provided for @noEducationEvents.
  ///
  /// In en, this message translates to:
  /// **'No education events yet'**
  String get noEducationEvents;

  /// No description provided for @degrees.
  ///
  /// In en, this message translates to:
  /// **'Degrees'**
  String get degrees;

  /// No description provided for @availableDegrees.
  ///
  /// In en, this message translates to:
  /// **'Available Degrees'**
  String get availableDegrees;

  /// No description provided for @noDegreesAvailable.
  ///
  /// In en, this message translates to:
  /// **'No degrees available yet'**
  String get noDegreesAvailable;

  /// No description provided for @healthStatus.
  ///
  /// In en, this message translates to:
  /// **'Health: {value}'**
  String healthStatus(int value);

  /// No description provided for @healthActions.
  ///
  /// In en, this message translates to:
  /// **'Health Actions'**
  String get healthActions;

  /// No description provided for @filterAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get filterAll;

  /// No description provided for @filterFamily.
  ///
  /// In en, this message translates to:
  /// **'Family'**
  String get filterFamily;

  /// No description provided for @filterFriends.
  ///
  /// In en, this message translates to:
  /// **'Friends'**
  String get filterFriends;

  /// No description provided for @filterLove.
  ///
  /// In en, this message translates to:
  /// **'Love'**
  String get filterLove;

  /// No description provided for @filterWork.
  ///
  /// In en, this message translates to:
  /// **'Work'**
  String get filterWork;

  /// No description provided for @noRelationships.
  ///
  /// In en, this message translates to:
  /// **'No relationships yet'**
  String get noRelationships;

  /// No description provided for @noInteractionsRecorded.
  ///
  /// In en, this message translates to:
  /// **'No interactions recorded yet'**
  String get noInteractionsRecorded;

  /// No description provided for @relationshipProgress.
  ///
  /// In en, this message translates to:
  /// **'Relationship'**
  String get relationshipProgress;

  /// No description provided for @roleParent.
  ///
  /// In en, this message translates to:
  /// **'Parent'**
  String get roleParent;

  /// No description provided for @roleSibling.
  ///
  /// In en, this message translates to:
  /// **'Sibling'**
  String get roleSibling;

  /// No description provided for @roleFriend.
  ///
  /// In en, this message translates to:
  /// **'Friend'**
  String get roleFriend;

  /// No description provided for @rolePartner.
  ///
  /// In en, this message translates to:
  /// **'Partner'**
  String get rolePartner;

  /// No description provided for @roleCoworker.
  ///
  /// In en, this message translates to:
  /// **'Coworker'**
  String get roleCoworker;

  /// No description provided for @roleMentor.
  ///
  /// In en, this message translates to:
  /// **'Mentor'**
  String get roleMentor;

  /// No description provided for @roleRival.
  ///
  /// In en, this message translates to:
  /// **'Rival'**
  String get roleRival;

  /// No description provided for @roleChild.
  ///
  /// In en, this message translates to:
  /// **'Child'**
  String get roleChild;

  /// No description provided for @eventLog.
  ///
  /// In en, this message translates to:
  /// **'Event Log'**
  String get eventLog;

  /// No description provided for @noEventsRecorded.
  ///
  /// In en, this message translates to:
  /// **'No events recorded yet'**
  String get noEventsRecorded;

  /// No description provided for @life.
  ///
  /// In en, this message translates to:
  /// **'Life'**
  String get life;

  /// No description provided for @performancePercent.
  ///
  /// In en, this message translates to:
  /// **'{value}%'**
  String performancePercent(int value);
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
