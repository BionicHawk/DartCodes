void main(List<String> args) {
  var pokemon = {
    "name": "Ditto",
    "hp": 100,
    'isAlive': true,
    'abilities': ['impostor'],
    'sprites': <int, String>{1: "ditto/front.png", 2: "ditto/back.png"}
  };

  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('HP: ${pokemon['hp']}');
  print('Images: ${pokemon['sprites']}');
  print('Images: ${pokemon['sprites'] ?? [1]}');
  print('Images: ${pokemon['sprites'] ?? [2]}');
}
