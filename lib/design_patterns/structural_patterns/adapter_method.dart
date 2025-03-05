// class OldService {
//   List<String> words = ['Ummida', '18', 'Taraz', 'Girl'];
// }

// abstract class Client {
//   getData();
// }

// abstract class Interface {}

// class Adapter implements Client {
//   OldService? service;
//   Adapter(this.service);

//   @override
//   getData() {
//     return service?.words.join(', ');
//   }
// }

// void main() {
//   OldService oldService = OldService();
//   Adapter adapter = Adapter(oldService);
//   print(adapter.getData());
// }

class OldService {
  String englishMessage;
  OldService(this.englishMessage);
}

abstract class Client {
  String getMessage();
}

class Adapter implements Client {
  OldService service;
  Adapter(this.service);

  @override
  String getMessage() {
    Map<String, String> translations = {
      'Hello': 'Bonjour',
      'Goodbye': 'Au revoir',
      'Thank you': 'Merci',
      'Yes': 'Oui',
      'No': 'Non'
    };

    return translations[service.englishMessage] ?? 'Translation not found';
  }
}

void main() {
  OldService oldService = OldService('Hello');
  Client adapter = Adapter(oldService);

  print(adapter.getMessage());
}
