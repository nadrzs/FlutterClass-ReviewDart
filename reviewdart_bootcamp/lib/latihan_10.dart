bool arithmeticSequence(List<int> numbers) {
  if (numbers.length < 2) {
    return false;
  }

  int commonDifference = numbers[1] - numbers[0];

  for (int i = 1; i < numbers.length - 1; i++) {
    if (numbers[i + 1] - numbers[i] != commonDifference) {
      return false;
    }
  }

  return true;
}

void main() {
  List<int> sequence = [2, 5, 8, 11, 14]; 

  if (arithmeticSequence(sequence)) {
    print('$sequence is an Arithmetic Sequence.');
  } else {
    print('$sequence is not an Arithmetic Sequence.');
  }
}