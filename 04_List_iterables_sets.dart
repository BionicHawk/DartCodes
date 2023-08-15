void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];
  print('Original List $numbers');
  print('Original List ${numbers.length}');
  print('Original List ${numbers[0]}');
  print('Original List ${numbers.first}');
  print('Original List ${numbers.last}');
  print('Reversed List ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('List: ${reversedNumbers.toSet()}');

  final numbersGreaterThanFive = numbers.where((element) => (element > 5));
  print(numbersGreaterThanFive);
}
