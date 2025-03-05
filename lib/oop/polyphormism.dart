abstract class Swimming {
  void canSwim();
}

class Fish implements Swimming {
  String color;
  int length;
  int weight;
  String type;

  Fish(
      {required this.color,
      required this.length,
      required this.type,
      required this.weight});

  @override
  void canSwim() {
    print('Swimming fish - $type');
  }
}

class Boat implements Swimming {
  String boatName;
  int length;
  int weight;

  Boat({required this.boatName, required this.length, required this.weight});

  @override
  void canSwim() {
    print('Swimming boat - $boatName');
  }
}

class WaterPlane implements Swimming {
  String color;
  int length;
  int maxSpeed;

  WaterPlane(
      {required this.color, required this.length, required this.maxSpeed});

  @override
  void canSwim() {
    print('Swimming WaterPlane color - $color');
  }
}

void swimForrestSwim(Swimming swimmingCreature) {
  swimmingCreature.canSwim();
}

void main() {
  // Fish karas = Fish(color: 'white', length: 10, type: 'Clown', weight: 1);
  // Boat teplohoad = Boat(boatName: 'Alexandra', length: 200, weight: 1000000);

  // swimForrestSwim(karas);
  // swimForrestSwim(teplohoad);
  WaterPlane plane = WaterPlane(color: 'red', length: 15, maxSpeed: 200);
  swimForrestSwim(plane);
}
