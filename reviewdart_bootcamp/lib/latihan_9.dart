void main() {
  List<int> numberList = [1, 2, 3, 4, 2, 2, 3, 3, 3, 4, 4, 4, 4];

  int result = mostFrequent(numberList);

  print('Number List: $numberList');
  print('Modus: $result');
}

int mostFrequent(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('List angka tidak boleh kosong.');
  }

  Map<int, int> frequencyMap = {};

  for (int number in numbers) {
    frequencyMap.update(number, (count) => count + 1, ifAbsent: () => 1);
  }

  int mostFrequentNumber = frequencyMap.keys.reduce((a, b) => frequencyMap[a]! > frequencyMap[b]! ? a : b);

  return mostFrequentNumber;
}