import 'dart:math';

class SeededRandom {
  SeededRandom(this._seed) : _random = Random(_seed);

  final int _seed;
  Random _random;
  int _callCount = 0;

  int get seed => _seed;
  int get callCount => _callCount;

  double nextDouble() {
    _callCount++;
    return _random.nextDouble();
  }

  int nextInt(int max) {
    _callCount++;
    return _random.nextInt(max);
  }

  bool nextBool() {
    _callCount++;
    return _random.nextBool();
  }

  bool chance(double probability) {
    return nextDouble() < probability;
  }

  T pickRandom<T>(List<T> items) {
    return items[nextInt(items.length)];
  }

  T pickWeighted<T>(Map<T, double> weightedItems) {
    final double totalWeight = weightedItems.values.fold(0.0, (a, b) => a + b);
    double roll = nextDouble() * totalWeight;
    for (final entry in weightedItems.entries) {
      roll -= entry.value;
      if (roll <= 0) {
        return entry.key;
      }
    }
    return weightedItems.keys.last;
  }

  void reset() {
    _random = Random(_seed);
    _callCount = 0;
  }

  SeededRandom fork() {
    return SeededRandom(_seed + _callCount);
  }
}
