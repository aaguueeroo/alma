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
  String get continueSoul => 'Continue Soul';

  @override
  String get createNewSoul => 'Create New Soul';

  @override
  String get archive => 'Archive';

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
  String timeRemaining(String time) {
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
  String get compassionDescription => 'Empathy and kindness toward others.';

  @override
  String get discipline => 'Discipline';

  @override
  String get disciplineDescription => 'Self-control and dedication to goals.';

  @override
  String get courage => 'Courage';

  @override
  String get courageDescription => 'Bravery in facing challenges and fears.';

  @override
  String get wisdom => 'Wisdom';

  @override
  String get wisdomDescription => 'Insight and sound judgment from experience.';

  @override
  String get fun => 'Fun';

  @override
  String get funDescription => 'Joy, playfulness, and enjoyment of life.';

  @override
  String get humility => 'Humility';

  @override
  String get humilityDescription =>
      'Modesty and awareness of one\'s limitations.';

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
  String get noAchievementsYet =>
      'No achievements yet. Complete lives to unlock them.';

  @override
  String get createSoulError => 'Could not create soul. Please try again.';

  @override
  String get retry => 'Retry';

  @override
  String get achievementsLoadError =>
      'Could not load achievements. Please try again.';

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
  String get performAction => 'Perform';

  @override
  String get continueLife => 'Continue Life';

  @override
  String currentLifeInfo(String templateName, int year, int age) {
    return '$templateName • Year $year, Age $age';
  }

  @override
  String get tabWork => 'Work';

  @override
  String get tabEducation => 'Education';

  @override
  String get tabLife => 'Life';

  @override
  String get tabHealth => 'Health';

  @override
  String get tabRelations => 'Social';

  @override
  String get store => 'Store';

  @override
  String get exitLife => 'Exit Life';

  @override
  String get exitLifeConfirmTitle => 'Leave this life?';

  @override
  String get exitLifeConfirmMessage =>
      'You will return to the soul world. Your progress is saved.';

  @override
  String get notImplementedYet => 'Not yet implemented';

  @override
  String get nextYearSkipRemaining => 'Next Year';

  @override
  String moneyAmount(int amount) {
    return '\$$amount';
  }

  @override
  String get jobTitle => 'Job';

  @override
  String get salary => 'Salary';

  @override
  String salaryAmount(int amount) {
    return '\$$amount/yr';
  }

  @override
  String get getJob => 'Get Job';

  @override
  String get jobActions => 'Actions';

  @override
  String get noWorkHistory => 'No work history yet';

  @override
  String get noWorkEvents => 'No work events yet';

  @override
  String get effort => 'Effort';

  @override
  String get cv => 'CV';

  @override
  String get availableJobs => 'Available Jobs';

  @override
  String get noJobsAvailable => 'No jobs available yet';

  @override
  String get studyTitle => 'Studies';

  @override
  String get grade => 'Grade';

  @override
  String get enroll => 'Enroll';

  @override
  String get dropOut => 'Drop out';

  @override
  String get enrollDialogTitle => 'Enroll in a program';

  @override
  String get enrollDialogDescription =>
      'Select a program you wish to enroll in.';

  @override
  String get noProgramsAvailable => 'No programs available to enroll in.';

  @override
  String get educationLevelPreschool => 'Preschool';

  @override
  String get educationLevelMiddleSchool => 'Middle School';

  @override
  String get educationLevelHighSchool => 'High School';

  @override
  String get educationLevelUniversity => 'University';

  @override
  String get educationLevelMaster => 'Master';

  @override
  String get educationLevelDoctorate => 'Doctorate';

  @override
  String get studyActions => 'Actions';

  @override
  String get noStudyHistory => 'No degrees obtained yet';

  @override
  String get noEducationEvents => 'No education events yet';

  @override
  String get degrees => 'Degrees';

  @override
  String get availableDegrees => 'Available Degrees';

  @override
  String get noDegreesAvailable => 'No degrees available yet';

  @override
  String healthStatus(int value) {
    return 'Health: $value';
  }

  @override
  String get healthActions => 'Health Actions';

  @override
  String get physicalHealth => 'Physical Health';

  @override
  String get mentalHealth => 'Mental Health';

  @override
  String get diagnosedConditions => 'Diagnosed Conditions';

  @override
  String get symptoms => 'Symptoms';

  @override
  String youFeelSymptoms(String symptoms) {
    return 'You feel: $symptoms';
  }

  @override
  String get hospital => 'Hospital';

  @override
  String get noHealthActionsAvailable =>
      'No health actions available this year.';

  @override
  String get healthBlocksWork =>
      'Your health condition prevents you from working this year.';

  @override
  String get healthBlocksStudy =>
      'Your health condition prevents you from studying this year.';

  @override
  String get healthBlocksWorkAndStudy =>
      'Your health condition prevents you from working and studying this year.';

  @override
  String get filterAll => 'All';

  @override
  String get filterFamily => 'Family';

  @override
  String get filterFriends => 'Friends';

  @override
  String get filterLove => 'Love';

  @override
  String get filterWork => 'Work';

  @override
  String get noRelationships => 'No relationships yet';

  @override
  String get noInteractionsRecorded => 'No interactions recorded yet';

  @override
  String get relationshipProgress => 'Relationship';

  @override
  String get roleParent => 'Parent';

  @override
  String get roleSibling => 'Sibling';

  @override
  String get roleFriend => 'Friend';

  @override
  String get rolePartner => 'Partner';

  @override
  String get roleCoworker => 'Coworker';

  @override
  String get roleMentor => 'Mentor';

  @override
  String get roleRival => 'Rival';

  @override
  String get roleChild => 'Child';

  @override
  String get eventLog => 'Event Log';

  @override
  String get noEventsRecorded => 'No events recorded yet';

  @override
  String get life => 'Life';

  @override
  String performancePercent(int value) {
    return '$value%';
  }

  @override
  String get notEnrolled => 'Not enrolled';

  @override
  String enrollmentYear(int current, int total) {
    return 'Year $current of $total';
  }

  @override
  String yearRepeated(int count) {
    return 'Year repeated ($count times)';
  }

  @override
  String get continueEducation => 'Continue Education?';

  @override
  String get chooseStudies => 'Choose Your Studies';

  @override
  String get decline => 'Decline';

  @override
  String get graduated => 'Graduated';

  @override
  String get kickedOut => 'Kicked Out';

  @override
  String educationGradeLabel(int grade) {
    return 'Final grade: $grade%';
  }

  @override
  String educationYearsLabel(int start, int end) {
    return 'Ages $start-$end';
  }

  @override
  String timeCostLabel(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '1 day',
    );
    return '$_temp0';
  }

  @override
  String get quitJob => 'Quit Job';

  @override
  String get quitJobConfirmTitle => 'Quit your job?';

  @override
  String quitJobConfirmMessage(String jobName) {
    return 'Are you sure you want to quit $jobName?';
  }

  @override
  String get askPromotion => 'Ask for Promotion';

  @override
  String get unemployed => 'Unemployed';

  @override
  String get jobTypeFullTime => 'Full-time';

  @override
  String get jobTypePartTime => 'Part-time';

  @override
  String get jobTypeCasual => 'Casual';

  @override
  String jobLevel(int level) {
    return 'Level $level';
  }

  @override
  String jobSalary(int amount) {
    return '\$$amount/yr';
  }

  @override
  String jobNotEnoughTime(int days) {
    return 'Not enough time left this year. This job requires $days days.';
  }

  @override
  String get applyToJob => 'Apply';

  @override
  String workYearsLabel(int start, int end) {
    return 'Ages $start-$end';
  }

  @override
  String get workRecordQuit => 'Quit';

  @override
  String get workRecordFired => 'Fired';

  @override
  String get workRecordCasualCompleted => 'Completed';

  @override
  String get workRecordCurrent => 'Current';

  @override
  String get noCurrentJob => 'Not employed';

  @override
  String get currentJobs => 'Current Jobs';

  @override
  String get interviewInvite => 'Interview';

  @override
  String get applicationRejected => 'Rejected';

  @override
  String get hired => 'Hired!';

  @override
  String get notHired => 'Not Hired';

  @override
  String get promotionGranted => 'Promoted!';

  @override
  String get promotionDenied => 'Promotion Denied';

  @override
  String get ok => 'OK';

  @override
  String get actionsThisYear => 'Actions done this year';

  @override
  String logAgePrefix(int age) {
    return '[Age $age]';
  }

  @override
  String get lifeLog => 'Life Log';

  @override
  String get noLogsRecorded => 'No logs recorded yet';

  @override
  String get viewAllLogs => 'View all logs';

  @override
  String get filterEducation => 'Education';

  @override
  String get filterEvent => 'Event';

  @override
  String get filterLife => 'Life';

  @override
  String get filterHealth => 'Health';

  @override
  String get filterSocial => 'Social';

  @override
  String get socialLog => 'Social Log';

  @override
  String get socialActions => 'Social Actions';

  @override
  String get socialGenericActions => 'General Actions';

  @override
  String get npcActions => 'Actions';

  @override
  String get selectNpc => 'Choose person';

  @override
  String get noSocialActionsAvailable => 'No actions available';

  @override
  String get affection => 'Affection';

  @override
  String get trust => 'Trust';

  @override
  String get respect => 'Respect';

  @override
  String get attraction => 'Attraction';

  @override
  String get conflict => 'Conflict';

  @override
  String get usedActions => 'Performed Actions';

  @override
  String get roleAcquaintance => 'Acquaintance';

  @override
  String get roleBestFriend => 'Best Friend';

  @override
  String get roleClassmate => 'Classmate';

  @override
  String get roleBoss => 'Boss';

  @override
  String get roleWorkSpouse => 'Work Spouse';

  @override
  String get roleFiance => 'Fiancé';

  @override
  String get roleSpouse => 'Spouse';

  @override
  String get roleEx => 'Ex';

  @override
  String get roleGrandparent => 'Grandparent';

  @override
  String get roleUncle => 'Uncle/Aunt';

  @override
  String get roleCousin => 'Cousin';

  @override
  String get roleNephew => 'Nephew/Niece';

  @override
  String get roleGrandchild => 'Grandchild';
}
