void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://www.facebook.com/');
    print(value);
  } on Exception catch(err){
    print('UPS!!!, algo terrible paso: $err');
  } catch (e) {
    print('The error was: $e');
  } finally {
    print('Fin del try catch');
  }

  print('Fin del programa');
}

Future httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception('No hay parametros en el url');
  // throw 'Error en la peticion';
  // return 'Tenemos un valor de la peticion';
}
