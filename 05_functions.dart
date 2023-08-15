void main() {
  print(greetEveryone());
  print('Suma de 6 + 10 = ${addTwoNumbers(6, 10)}');
  print(greetPerson(name: 'Angel', message: 'Bienvendo a Dart'));
  print(greetPerson(name: 'Oscar'));
}

String greetEveryone() => 'Hello Everyone';

int addTwoNumbers(int a, [int b = 0]) => a + b;

String greetPerson({required String name, String? message}) {
  return 'Hola, $name! ${message ?? ''}';
}
