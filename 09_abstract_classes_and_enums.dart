void main() {
  WindPlant windPlant = WindPlant(initialEnergy: 100);
  print(windPlant);
  print('This plant has ${windPlant.energyLeft} units of energy');
  windPlant.consumeEnergy(50);
  print('Energy level has droped to ${windPlant.energyLeft}');
  print(
      'Phone has been charged it left the plant with this amout of energy: ${chargePhone(windPlant)}');

  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  print(nuclearPlant);
  print(
      'The nuclear plant has this amount of energy: ${nuclearPlant.energyLeft}');
  print(
      'The phone has been charged and it left the plant with this amount of energy ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  plant.consumeEnergy(10);
  return plant.energyLeft;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type; // nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind) {}

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  PlantType type;

  NuclearPlant({required this.energyLeft}) : type = PlantType.nuclear;

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
