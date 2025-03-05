//Данный принцип повседневно встречается в разработке мобильных приложений.

// class EmailSignInRepository {
// 	void signInEmail(){
// 	}
// }

// class AuthRepository {
// 	EmailSignInRepository emailSignInRepository;
// 	Auth({required this.emailSignInRepository});

// 	void signIn() {
// 		emailSignInRepository.signInEmail();
// 	}

// }

abstract class SignInRepository {
  void signIn();
}

class EmailSignInRepository implements SignInRepository {
  @override
  void signIn() {}
}

class PhoneSignInRepository implements SignInRepository {
  @override
  void signIn() {}
}

class AuthRepository {
  void signIn() {}
}
