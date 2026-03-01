import 'package:alma/core/models/npc.dart';
import 'package:alma/core/models/name_repository.dart';
import 'package:alma/core/models/enums/npc_role.dart';
import 'package:alma/core/models/enums/trait_type.dart';
import 'package:alma/core/models/enums/gender.dart';
import 'package:alma/core/models/enums/pronoun.dart';
import 'package:alma/core/engine/seeded_random.dart';
import 'package:uuid/uuid.dart';

class NpcFactory {
  NpcFactory();

  static const Uuid _uuid = Uuid();
  final Map<String, NameRepository> _nameRepos = {};

  void loadNameRepository(NameRepository repo) {
    _nameRepos[repo.country] = repo;
  }

  NameRepository? getNameRepository(String country) {
    return _nameRepos[country] ?? _nameRepos['default'];
  }

  Npc generateNpc({
    required SeededRandom rng,
    required String country,
    required String relationshipTypeId,
    int? playerAge,
  }) {
    final NameRepository repo = _nameRepos[country] ?? _nameRepos['default']!;
    final Gender gender = _randomGender(rng);
    final String firstName = _pickName(repo, gender, rng);
    final String lastName = rng.pickRandom(repo.lastNames);
    final String fullName = '$firstName $lastName';
    final NpcRole role = _roleFromTypeId(relationshipTypeId);
    final int age = _generateAge(rng, relationshipTypeId, playerAge ?? 20);
    final List<TraitType> visibleTraits = _pickTraits(rng, 1, 2);
    final List<TraitType> hiddenTraits = _pickTraits(rng, 1, 3,
        exclude: visibleTraits);
    final double compatibility = 0.2 + rng.nextDouble() * 0.6;

    final Pronoun pronoun = _pronounFromGender(gender);
    return Npc(
      id: _uuid.v4(),
      name: fullName,
      role: role,
      visibleTraits: visibleTraits,
      hiddenTraits: hiddenTraits,
      compatibilityFactor: double.parse(compatibility.toStringAsFixed(2)),
      relationshipTypeId: relationshipTypeId,
      age: age,
      gender: gender,
      pronoun: pronoun,
      country: country,
      isAlive: true,
    );
  }

  static Gender _randomGender(SeededRandom rng) {
    final int i = rng.nextInt(10);
    if (i < 4) return Gender.male;
    if (i < 8) return Gender.female;
    return Gender.other;
  }

  static Pronoun _pronounFromGender(Gender gender) {
    switch (gender) {
      case Gender.male:
        return Pronoun.he;
      case Gender.female:
        return Pronoun.she;
      case Gender.other:
        return Pronoun.they;
    }
  }

  String _pickName(NameRepository repo, Gender gender, SeededRandom rng) {
    final List<String> names;
    switch (gender) {
      case Gender.male:
        names = repo.firstNames.male;
        break;
      case Gender.female:
        names = repo.firstNames.female;
        break;
      case Gender.other:
        names = rng.nextBool()
            ? repo.firstNames.male
            : repo.firstNames.female;
        break;
    }
    return rng.pickRandom(names);
  }

  int _generateAge(SeededRandom rng, String typeId, int playerAge) {
    switch (typeId) {
      case 'mother':
      case 'father':
        return playerAge + 20 + rng.nextInt(15);
      case 'grandparent':
        return playerAge + 45 + rng.nextInt(15);
      case 'sibling':
        return (playerAge + rng.nextInt(8) - 4).clamp(0, 100);
      case 'child':
        return (playerAge - 20 - rng.nextInt(10)).clamp(0, 100);
      case 'uncle_aunt':
        return playerAge + 15 + rng.nextInt(20);
      case 'cousin':
        return (playerAge + rng.nextInt(10) - 5).clamp(0, 100);
      case 'classmate':
        return (playerAge + rng.nextInt(4) - 2).clamp(0, 100);
      case 'colleague':
      case 'boss':
      case 'work_spouse':
        return playerAge + rng.nextInt(20) - 5;
      default:
        return (playerAge + rng.nextInt(16) - 8).clamp(0, 100);
    }
  }

  List<TraitType> _pickTraits(
    SeededRandom rng,
    int minCount,
    int maxCount, {
    List<TraitType> exclude = const [],
  }) {
    final List<TraitType> available = TraitType.values
        .where((TraitType t) => !exclude.contains(t))
        .toList();
    final int count = minCount + rng.nextInt(maxCount - minCount + 1);
    final List<TraitType> picked = [];
    for (int i = 0; i < count && available.isNotEmpty; i++) {
      final int index = rng.nextInt(available.length);
      picked.add(available.removeAt(index));
    }
    return picked;
  }

  NpcRole _roleFromTypeId(String typeId) {
    switch (typeId) {
      case 'mother':
      case 'father':
        return NpcRole.parent;
      case 'sibling':
        return NpcRole.sibling;
      case 'grandparent':
        return NpcRole.grandparent;
      case 'uncle_aunt':
        return NpcRole.uncle;
      case 'cousin':
        return NpcRole.cousin;
      case 'child':
        return NpcRole.child;
      case 'nephew_niece':
        return NpcRole.nephew;
      case 'grandchild':
        return NpcRole.grandchild;
      case 'acquaintance':
        return NpcRole.acquaintance;
      case 'friend':
        return NpcRole.friend;
      case 'best_friend':
        return NpcRole.bestFriend;
      case 'classmate':
        return NpcRole.classmate;
      case 'colleague':
        return NpcRole.coworker;
      case 'boss':
        return NpcRole.boss;
      case 'work_spouse':
        return NpcRole.workSpouse;
      case 'situationship':
        return NpcRole.partner;
      case 'boyfriend_girlfriend':
        return NpcRole.partner;
      case 'fiance':
        return NpcRole.fiance;
      case 'spouse':
        return NpcRole.spouse;
      case 'ex':
        return NpcRole.ex;
      default:
        return NpcRole.acquaintance;
    }
  }
}
