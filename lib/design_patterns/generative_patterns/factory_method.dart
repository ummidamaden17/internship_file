// import 'package:flutter/widgets.dart';

// abstract class Drink {
//   void drink();
// }

// class Tea implements Drink {
//   @override
//   void drink() {
//     print('Drinking a tea');
//   }
// }

// class Coffee implements Drink {
//   @override
//   void drink() {
//     print('Drinking a coffee');
//   }
// }

// class Cola implements Drink {
//   @override
//   void drink() {
//     print('Drinking a cola');
//   }
// }

// class Juice implements Drink {
//   @override
//   void drink() {
//     print('Drinking a juice');
//   }
// }

// class MilkShake implements Drink {
//   @override
//   void drink() {
//     print('Drinking a milkshake');
//   }
// }

// abstract class DrinkFactory {
//   Drink createDrink();
// }

// class TeaFactory implements DrinkFactory {
//   @override
//   Drink createDrink() {
//     return Tea();
//   }
// }

// class CoffeeFactory implements DrinkFactory {
//   @override
//   Drink createDrink() {
//     return Coffee();
//   }
// }

// class ColaFactory implements DrinkFactory {
//   @override
//   Drink createDrink() {
//     return Cola();
//   }
// }

// class JuiceFactory implements DrinkFactory {
//   @override
//   Drink createDrink() {
//     return Juice();
//   }
// }

// class MilkShakeFactory implements DrinkFactory {
//   @override
//   Drink createDrink() {
//     return MilkShake();
//   }
// }

// void main() {
//   List<DrinkFactory> factories = [
//     CoffeeFactory(),
//     ColaFactory(),
//     TeaFactory(),
//     JuiceFactory(),
//     MilkShakeFactory()
//   ];

//   for (var factory in factories) {
//     Drink drink = factory.createDrink();
//     drink.drink();
//   }
// }

abstract class Transport {
  void deliver();
}

class Train implements Transport {
  @override
  void deliver() {
    print('Delivery by train');
  }
}

class Truck implements Transport {
  @override
  void deliver() {
    print('Delivery by truck');
  }
}

class Plane implements Transport {
  @override
  void deliver() {
    print('Delivery by plane');
  }
}

abstract class MailService {
  Transport createTransport();
}

class LandMail extends MailService {
  @override
  Transport createTransport() {
    return Truck();
  }
}

class AirMail extends MailService {
  @override
  Transport createTransport() {
    return Plane();
  }
}

class FlexibleandMail extends MailService {
  final String type;
  FlexibleandMail(this.type);
  @override
  Transport createTransport() {
    if (type == 'train') {
      return Train();
    } else {
      return Truck();
    }
  }
}

void main() {
  List<MailService> services = [
    LandMail(),
    AirMail(),
    FlexibleandMail('train'),
    FlexibleandMail('Truck')
  ];

  for (var service in services) {
    Transport transport = service.createTransport();
    transport.deliver();
  }
}
