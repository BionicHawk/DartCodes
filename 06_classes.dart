void main() {
  final Wolverine = Hero(name: "Logan", power: "Regeneration");
  final Thor = Hero(name: 'Thor', power: 'Thunder');
  Wolverine.DisplayInfo();
  Thor.DisplayInfo();
  print(Thor.toString());
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = 'none'}) {
    print('${this.name} has been created!');
  }

  void DisplayInfo() {
    print("Hero ${this.name} has the power of ${this.power}");
  }

  @override
  String toString() {
    return '${name} - ${power}';
  }
}
