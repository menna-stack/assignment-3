void countGeneral(List<num> numbers) {
  Map<num, int> counts = {};

  for (int i = 0; i < numbers.length; i++) {
    num current = numbers[i];
    if (counts.containsKey(current)) {
      counts[current] = counts[current]! + 1;
    } else {
      counts[current] = 1;
    }
  }

  List<num> keys = counts.keys.toList();
  for (int i = 0; i < keys.length; i++) {
    num key = keys[i];
    print('$key->${counts[key]}');
  }
}

void main() {
  countGeneral([1, 2, 3, 1, 3, 6]);
}