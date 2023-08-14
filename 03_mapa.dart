void main(List<String> args){

  final pokemon = {
    "name": "Ditto",
    "hp": 100,
    'isAlive': true,
    'abilities': ['impostor'],
    'sprites': {
      1: "ditto/front.png",
      2: "ditto/back.png"
    }
  };
  // final pokemons = {
  //   1: "ABC",
  //   2: "XYZ",
  //   3: "123",
  //   150: "AGJH"
  // };

  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('HP: ${pokemon['hp']}');
  print('Images: ${pokemon['sprites']}');
  print('Images: ${ pokemon['sprites'][1] }');
  print('Images: ${ pokemon['sprites'][2] }');

  
}