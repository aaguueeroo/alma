import 'package:flutter_test/flutter_test.dart';
import 'package:alma/core/engine/seeded_random.dart';

void main() {
  group('SeededRandom', () {
    test('produces deterministic sequence with same seed', () {
      final rng1 = SeededRandom(42);
      final rng2 = SeededRandom(42);
      final results1 = List.generate(10, (_) => rng1.nextDouble());
      final results2 = List.generate(10, (_) => rng2.nextDouble());
      expect(results1, equals(results2));
    });

    test('produces different sequence with different seed', () {
      final rng1 = SeededRandom(42);
      final rng2 = SeededRandom(99);
      final results1 = List.generate(10, (_) => rng1.nextDouble());
      final results2 = List.generate(10, (_) => rng2.nextDouble());
      expect(results1, isNot(equals(results2)));
    });

    test('chance returns true when roll is below probability', () {
      final rng = SeededRandom(42);
      int trueCount = 0;
      for (int i = 0; i < 1000; i++) {
        if (rng.chance(0.5)) trueCount++;
      }
      expect(trueCount, greaterThan(400));
      expect(trueCount, lessThan(600));
    });

    test('chance with 0.0 always returns false', () {
      final rng = SeededRandom(42);
      for (int i = 0; i < 100; i++) {
        expect(rng.chance(0.0), isFalse);
      }
    });

    test('chance with 1.0 always returns true', () {
      final rng = SeededRandom(42);
      for (int i = 0; i < 100; i++) {
        expect(rng.chance(1.0), isTrue);
      }
    });

    test('pickRandom selects from list', () {
      final rng = SeededRandom(42);
      final items = ['a', 'b', 'c'];
      final picked = rng.pickRandom(items);
      expect(items, contains(picked));
    });

    test('reset restores initial state', () {
      final rng = SeededRandom(42);
      final first = rng.nextDouble();
      rng.reset();
      final afterReset = rng.nextDouble();
      expect(first, equals(afterReset));
    });

    test('tracks call count', () {
      final rng = SeededRandom(42);
      expect(rng.callCount, 0);
      rng.nextDouble();
      expect(rng.callCount, 1);
      rng.nextInt(10);
      expect(rng.callCount, 2);
      rng.nextBool();
      expect(rng.callCount, 3);
    });
  });
}
