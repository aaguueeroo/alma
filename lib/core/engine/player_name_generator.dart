import 'package:alma/core/models/name_repository.dart';
import 'package:alma/core/models/enums/gender.dart';
import 'package:alma/core/engine/seeded_random.dart';

/// Generates a player name from a name repository using seeded random
/// for full reproducibility of lives.
class PlayerNameGenerator {
  PlayerNameGenerator._();

  static Gender _randomGender(SeededRandom rng) {
    final int i = rng.nextInt(10);
    if (i < 4) return Gender.male;
    if (i < 8) return Gender.female;
    return Gender.other;
  }

  static String _pickFirstName(NameRepository repo, Gender gender, SeededRandom rng) {
    final List<String> names;
    switch (gender) {
      case Gender.male:
        names = repo.firstNames.male;
        break;
      case Gender.female:
        names = repo.firstNames.female;
        break;
      case Gender.other:
        names = rng.nextBool() ? repo.firstNames.male : repo.firstNames.female;
        break;
    }
    return rng.pickRandom(names);
  }

  /// Generates a full name (first + last) from [repo] using [rng].
  /// Uses seeded random so the same seed always produces the same name.
  static String generate(NameRepository repo, SeededRandom rng) {
    final Gender gender = _randomGender(rng);
    final String firstName = _pickFirstName(repo, gender, rng);
    final String lastName = rng.pickRandom(repo.lastNames);
    return '$firstName $lastName';
  }
}
