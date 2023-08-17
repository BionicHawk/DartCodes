import 'dart:io';

int h = 0, m = 0, s = 0;

void main() {
  final time = askTimeToUser();
  timer(time).listen((int value) {
    print("$h:$m:$s");
    if (s > 58) {
      s = 0;
      if (m > 58) {
        m = 0;
        h++;
      } else {
        m++;
      }
    } else {
      s++;
    }
  }).onDone(() {
    print('Temporizador Finalizado!');
  });
}

Stream<int> timer(int totalInSeconds) {
  return Stream.periodic(const Duration(seconds: 1), (int value) {
    return value;
  }).take(totalInSeconds);
}

int askTimeToUser() {
  print("Ingrese las horas:");
  int hours = int.parse(stdin.readLineSync() ?? '0');
  print("Ingrese los minutos:");
  int minutes = int.parse(stdin.readLineSync() ?? '0');
  print("Ingrese los segundos:");
  int seconds = int.parse(stdin.readLineSync() ?? '0');
  return (hours * 3600) + (minutes * 60) + seconds + 1;
}
