/// Narrative log messages for life simulation events.
/// Used when creating user-friendly log entries (education, work, life flows).
class LogNarratives {
  LogNarratives._();

  // --- Life ---
  static const String lifeBorn = 'A new life began.';
  static String lifeTurnedAge(int age) => 'You turned $age years old.';
  static const String lifeDiedHealth = 'Your health gave out.';
  static const String lifeDiedOldAge = 'You lived to a ripe old age.';
  static const String lifeDiedNatural = 'You passed away peacefully.';
  static String lifeDiedEvent(String eventTitle) =>
      'Your life ended during: $eventTitle.';

  // --- Education ---
  static String educationEnrolled(String programName) =>
      'You enrolled in $programName.';
  static String educationPassedYear(int year, String programName) =>
      'You passed year $year of $programName.';
  static String educationFailedYear(int year, String programName) =>
      'You did not pass year $year of $programName.';
  static String educationFailedYearRepeating(int year, String programName) =>
      'You had to repeat year $year of $programName.';
  static String educationGraduated(String programName, int grade) =>
      'You graduated from $programName with a final grade of $grade%.';
  static String educationKickedOut(String programName) =>
      'You were asked to leave $programName.';
  static String educationDroppedOut(String programName) =>
      'You decided to leave $programName.';

  // --- Work: applications & hiring ---
  static String workHired(String jobTitle, String jobName) =>
      'You were hired as $jobTitle at $jobName.';
  static String workApplicationRejected(String jobName) =>
      'Your application to $jobName was not successful.';
  static String workInterviewRejected(String jobName) =>
      'After the interview, $jobName decided to go with another candidate.';

  // --- Work: employment ---
  static String workQuit(String jobName) => 'You left your job at $jobName.';
  static String workFired(String jobName) =>
      'You were let go from $jobName.';
  static String workPromoted(String newTitle, String jobName) =>
      'You were promoted to $newTitle at $jobName.';
  static String workPromotionDenied(String jobName) =>
      'Your request for a promotion at $jobName was not approved.';
  static String workCasualCompleted(String jobName, int salary) =>
      'Your casual role at $jobName ended. You earned \$$salary.';
  static String workEarnedSalary(String jobName, int salary) =>
      'You earned \$$salary from your work at $jobName.';

  // --- Health ---
  static String healthActionPerformed(String actionName) =>
      'You ${actionName[0].toLowerCase()}${actionName.length > 1 ? actionName.substring(1) : ''}.';
  static String healthConditionDeveloped(String conditionName) =>
      'You developed $conditionName.';
  static String healthConditionDiagnosed(String conditionName) =>
      '$conditionName was diagnosed.';
  static String healthConditionTreated(String conditionName) =>
      'You began treatment for $conditionName.';
  static String healthConditionRecovered(String conditionName) =>
      'You recovered from $conditionName.';
  static String healthSymptomAppeared(String symptomDescription) =>
      'You noticed new symptoms: $symptomDescription.';

  // --- Social ---
  static String socialMetNpc(String npcName, String typeLabel) =>
      'You met $npcName, a new $typeLabel.';
  static String socialActionDeclined(String npcName, String actionName) =>
      '$npcName declined your invitation to ${actionName.toLowerCase()}.';
  static String socialRelationshipForgotten(String npcName) =>
      'You lost touch with $npcName.';
  static String socialRelationshipUpgraded(String npcName, String newType) =>
      'Your relationship with $npcName evolved — they are now your $newType.';
}
