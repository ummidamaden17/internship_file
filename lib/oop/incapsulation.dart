class Item {
  String title;
  String description;
  int price;
  int rating;

  Item(
      {required this.title,
      required this.description,
      required this.rating,
      required this.price});

  void changePrice(int newPrice) {
    price = newPrice;
  }

  int proRating() {
    int newRating = 0;
    newRating = rating * description.length;
    return newRating;
  }

  static int twoSum(int a, int b) {
    return a + b;
  }
}

// void main() {
//   Item myItem = Item(
//       title: 'Cool thing',
//       description: 'Yes it is really cool',
//       rating: 1000000,
//       price: 5);
//
//   print(myItem);
//   myItem.changePrice(3456);
//   print(myItem.price);
//   print(myItem.proRating());
// }

class AutoTransmission {
  int currentTransmission;
  AutoTransmission({this.currentTransmission = 0});

  void changeTransmission(int value) {
    if (value < 5) {
      currentTransmission = value;
    } else {
      print('У тебя коробка на 4 передачи, дядя');
      print('*передача не изменилась*');
    }
  }
}

// void main() {
//   AutoTransmission auto = AutoTransmission();

//   print(auto.currentTransmission);
//   auto.changeTransmission(3);
//   print(auto.currentTransmission);
//   auto.changeTransmission(5);
//   print(auto.currentTransmission);
// }

// class BankAccount {
//   int bankNumber;
//   int balance;

//   BankAccount({required this.bankNumber, required this.balance});
// }

// void main() {
//   BankAccount bank = BankAccount(bankNumber: 123456123456, balance: 100);

//   print(bank.balance);

//   bank.balance = 50000000;
//   print(bank.balance);
// }

// class BankAccount {
//   int _bankNumber;
//   int _balance;

//   BankAccount(this._bankNumber, this._balance);
// }

// void main() {
//   BankAccount bank = BankAccount(12341234, 100);
//   print(bank._balance);

//   bank._balance = 56000000;
//   print(bank._balance);
// }

class BankAccount {
  int _bankNumber;
  final int _balance;

  BankAccount(this._bankNumber, this._balance);

  int get bankNumber => _bankNumber;
  int get balance => _balance;

  set bankNumber(int newNumber) {
    if (newNumber.toString().length == 8) {
      _bankNumber = newNumber;
    } else {
      print("!!! Номер счета не изменен !!!");
      print("Номер счета должен содержать 8 цифр");
    }
  }
}

void main() {
  BankAccount bank2 = BankAccount(16784723, 200);

  print(bank2.bankNumber); // 16784723

  bank2.bankNumber = 12345678;
  print(bank2.bankNumber); // 12345678

  bank2.bankNumber = 123456789; // !!! Номер счета не изменен !!!
  print(bank2.bankNumber); // 12345678
}
