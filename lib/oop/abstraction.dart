abstract class BaseSellingMachine {
  void makeOrder(String order);
  String giveOrder();
}

// Абстрактный класс BaseSellingMachineI является интерфейсом для дочерних классов VendingMachine и CoffeeMachine.

class VendingMachine extends BaseSellingMachine {
  List<String> positions = ['salad', 'cola', 'whiskey'];

  int currentMoney;
  String? currentOrder;

  int vengerId;
  VendingMachine(
      {required this.vengerId, this.currentMoney = 0, this.currentOrder});

  void pickPosition() {
    if (currentOrder != null) {
      print('Picking up position: $currentOrder');
    } else {
      print('Nothing to pick');
    }
  }

  @override
  void makeOrder(String order) {
    if (positions.contains(order)) {
      currentOrder = order;
    } else {
      print('Choose real position');
    }
  }

  @override
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

class CoffeeMachine extends BaseSellingMachine {
  List<String> positions = ['espresso', 'double-espresso', 'triple-espresso'];

  int currentMoney;
  String? currentOrder;

  int serviceLife;
  CoffeeMachine(
      {required this.serviceLife, this.currentMoney = 0, this.currentOrder});

  @override
  void makeOrder(String order) {
    if (positions.contains(order)) {
      currentOrder = order;
    } else {
      print('Choose real position');
    }
  }

  @override
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
