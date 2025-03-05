// class House {
//   String? walls;
//   String? doors;
//   String? windows;

//   void showHouse() {
//     print('House with walls: $walls, Doors: $doors, Windows: $windows');
//   }
// }

// abstract class HouseBuilder {
//   void BuildWalls();
//   void BuildDoors();
//   void BuildWindows();
//   House getResult();
// }

// class WoodenHouseBuilder implements HouseBuilder {
//   House _house = House();

//   @override
//   void BuildWalls() {
//     _house.walls = 'Wooden Walls';
//   }

//   @override
//   void BuildDoors() {
//     _house.doors = 'Wooden Doors';
//   }

//   @override
//   void BuildWindows() {
//     _house.windows = 'Glass Windows';
//   }

//   @override
//   House getResult() {
//     return _house;
//   }
// }

// class ConcreteHouseBuilder implements HouseBuilder {
//   House _house = House();

//   @override
//   void BuildWalls() {
//     _house.walls = 'Concrete Walls';
//   }

//   @override
//   void BuildDoors() {
//     _house.doors = 'Metal Doors';
//   }

//   @override
//   void BuildWindows() {
//     _house.windows = 'Bulletproof Windows';
//   }

//   @override
//   House getResult() {
//     return _house;
//   }
// }

// class Director {
//   HouseBuilder? _builder;

//   void setBuilder(HouseBuilder builder) {
//     _builder = builder;
//   }

//   House contructHouse() {
//     _builder!.BuildWalls();
//     _builder!.BuildDoors();
//     _builder!.BuildWindows();
//     return _builder!.getResult();
//   }
// }

// void main() {
//   Director director = Director();

//   // Building a wooden house
//   HouseBuilder woodenBuilder = WoodenHouseBuilder();
//   director.setBuilder(woodenBuilder);
//   House woodenHouse = director.contructHouse();
//   woodenHouse.showHouse();

//   // Building a concrete house
//   HouseBuilder concreteBuilder = ConcreteHouseBuilder();
//   director.setBuilder(concreteBuilder);
//   House concreteHouse = director.contructHouse();
//   concreteHouse.showHouse();
// }

class Computer {
  String? processor;
  String? ram;
  String? storage;
  String? graphicsCard;

  void showComputer() {
    print(
        'Computer processor: $processor, ram: $ram, storage: $storage, graphicsCard: $graphicsCard');
  }
}

abstract class ComputerBuilder {
  void buildProcessor();
  void buildRam();
  void buildStorage();
  void buildGraphicsCard();
  Computer getComputer();
}

class GamingComputerBuilder implements ComputerBuilder {
  Computer _computer = Computer();
  @override
  void buildProcessor() {
    _computer.processor = 'Intel Core i9';
  }

  @override
  void buildRam() {
    _computer.ram = '16GB DDR4';
  }

  @override
  void buildStorage() {
    _computer.storage = '2B HDD';
  }

  @override
  void buildGraphicsCard() {
    _computer.graphicsCard = 'AMD Radeon RX 6800';
  }

  @override
  Computer getComputer() {
    return _computer;
  }
}

class OfficeComputerBuilder implements ComputerBuilder {
  Computer _computer = Computer();
  @override
  void buildProcessor() {
    _computer.processor = 'Intel Core i5';
  }

  @override
  void buildRam() {
    _computer.ram = '16GB DDR4';
  }

  @override
  void buildStorage() {
    _computer.storage = '2B HDD';
  }

  @override
  void buildGraphicsCard() {
    _computer.graphicsCard = 'AMD Radeon RX 6800';
  }

  @override
  Computer getComputer() {
    return _computer;
  }
}

class Director {
  ComputerBuilder? _builder;

  void setBuilder(ComputerBuilder builder) {
    _builder = builder;
  }

  Computer contructComputer() {
    _builder!.buildProcessor();
    _builder!.buildRam();
    _builder!.buildStorage();
    _builder!.buildGraphicsCard();
    return _builder!.getComputer();
  }
}

void main() {
  Director director = Director();

  ComputerBuilder gamingComputerBuilder = GamingComputerBuilder();
  director.setBuilder(gamingComputerBuilder);
  Computer gamingComputer = director.contructComputer();
  gamingComputer.showComputer();

  ComputerBuilder officeComputerBuilder = OfficeComputerBuilder();
  director.setBuilder(officeComputerBuilder);
  Computer officeComputer = director.contructComputer();
  officeComputer.showComputer();
}
