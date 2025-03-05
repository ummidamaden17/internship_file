// class VendingMachine {
//   List<String> positions = ['salad', 'cola', 'whiskey'];

//   int currentMoney;
//   String? currentOrder;

//   VendingMachine({this.currentMoney = 0});

//   void makeOrder(String order) {
//     if (positions.contains(order)) {
//       currentOrder = order;
//     } else {
//       print('Choose real position');
//     }
//   }

//   String giveOrder() {
//     if (currentOrder != null) {
//       String tmp = currentOrder!;
//       currentOrder = null;
//       return tmp;
//     } else {
//       return 'Your order is empty!';
//     }
//   }
// }

// class CoffeeMachine {
//   List<String> positions = ['espresso', 'double-espresso', 'triple-espresso'];

//   int currentMoney;
//   String? currentOrder;

//   CoffeeMachine({this.currentMoney = 0});

//   void makeOrder(String order) {
//     if (positions.contains(order)) {
//       currentOrder = order;
//     } else {
//       print('Choose real position');
//     }
//   }

//   String giveOrder() {
//     if (currentOrder != null) {
//       String tmp = currentOrder!;
//       currentOrder = null;
//       return tmp;
//     } else {
//       return 'Your order is empty!';
//     }
//   }
// }

// void main() {
//   VendingMachine vending = VendingMachine();
//   CoffeeMachine coffee = CoffeeMachine();

//   vending.makeOrder('salad');
//   print(vending.giveOrder());

//   coffee.makeOrder('espresso');
//   print(coffee.giveOrder());

//   print(coffee.giveOrder());
//   print(vending.giveOrder());
// }

class BaseSellingMachine {
  List<String> positions = [];

  int currentMoney;
  String? currentOrder;

  BaseSellingMachine({this.currentMoney = 0, this.currentOrder});

  void makeOrder(String order) {
    if (positions.contains(order)) {
      currentOrder = order;
    } else {
      print('Choose real position');
    }
  }

  String giveOrder() {
    if (currentOrder != null) {
      String tmp = currentOrder!;
      currentOrder = null;
      return tmp;
    } else {
      return 'Your order is empty!';
    }
  }
}

class VendingMachine extends BaseSellingMachine {
  @override
  List<String> positions = ['salad', 'cola', 'whiskey'];
  int vengerId;
  VendingMachine(int currentMoney, String? currentOrder,
      {required this.vengerId})
      : super(currentMoney: currentMoney, currentOrder: currentOrder);

  void pickPosition() {
    if (currentOrder != null) {
      print('Picking up position: $currentOrder');
    } else {
      print('Nothing to pick');
    }
  }
}

class CoffeeMachine extends BaseSellingMachine {
  @override
  List<String> positions = ['espresso', 'double-espresso', 'triple-espresso'];
  int serviceLife;
  CoffeeMachine(int currentMoney, String? currentOrder,
      {required this.serviceLife})
      : super(currentMoney: currentMoney, currentOrder: currentOrder);

  void prepareCoffee() {
    if (currentOrder != null) {
      print('Preparing coffee: $currentOrder');
    } else {
      print('Nothing to  prepare');
    }
  }
}

void main() {
  VendingMachine vending = VendingMachine(10, 'salad', vengerId: 228);
  CoffeeMachine coffee = CoffeeMachine(10, 'espresso', serviceLife: 10);

  print(
      'Vending money: ${vending.currentMoney}, position: ${vending.currentOrder}, id: ${vending.vengerId}');

  print(
      'Coffee money: ${coffee.currentMoney}, position: ${coffee.currentOrder}, id: ${coffee.serviceLife}');
}
