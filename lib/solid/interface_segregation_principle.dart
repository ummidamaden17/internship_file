// abstract class Pay {
// 	void buyCreditCard();
// 	void buyCash();
// 	void buyPayPal();
// }

// class InternetPay implements Pay {

//  @override
//  void buyCreditCard(){
//  }

//  @override
//  void buyCash(){
//  }

//  @override
//  void buyPayPal(){
//  }

// }

// class TerminalPay implements Pay {

//  @override
//  void buyCreditCard(){
//  }

//  @override
//  void buyCash(){
//  }

//  @override
//  void buyPayPal(){
//  }

// }

//Для того чтобы этого не происходило необходимо разделить
// наш исходный интерфейс Pay на несколько и создавая классы,
// имплементить в них только те интерфейсы с методами, которые им нужны.

abstract class BuyCreditCard {
  void buyCreditCard();
}

abstract class BuyCash {
  void buyCash();
}

abstract class BuyPayPal {
  void buyPayPal();
}

class InternetPay implements BuyCreditCard, BuyPayPal {
  @override
  void buyCreditCard() {}

  @override
  void buyPayPal() {}
}

class TermialPay implements BuyCreditCard, BuyPayPal, BuyCash {
  @override
  void buyCreditCard() {}

  @override
  void buyCash() {}

  @override
  void buyPayPal() {}
}
