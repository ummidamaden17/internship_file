// class Player {
// 	void buy(){
// 	}
// 	void checkPlayers(){
// 	}
// 	void checkBalance(){
// 	}
// }
//Данный принцип связан с наследованием классов

class Player {
  void buy() {}

  void checkBalance() {}
}

class DefoultPlayer extends Player {
  @override
  void buy() {}

  @override
  void checkBalance() {}
}

class CheckBalance extends Player {
  void checkPlayers() {}
}

class AdminPlayer extends CheckBalance {
  @override
  void buy() {}

  @override
  void checkPlayers() {}

  @override
  void checkBalance() {}
}
