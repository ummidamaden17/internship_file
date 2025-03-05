// class PostNotificationRepostory {
//   void postNotification(String type) {
//     if (type == "email") {}
//     if (type == "phone") {}
//     if (type == "facebook") {}
//   }
// } it includes first principle, but not second

abstract class PostNotificationRepostory {
  void postNotification(String type);
}

class EmailNotificationRepostoryImpl implements PostNotificationRepostory {
  @override
  void postNotification(String type) {}
}

class PhoneNotificationRepostoryImpl implements PostNotificationRepostory {
  @override
  void postNotification(String type) {}
}

class FacebookNotificationRepostoryImpl implements PostNotificationRepostory {
  @override
  void postNotification(String type) {}
}

//Проектируя код таким образом мы не будем нарушать принцип
// открытости-закрытости, так как мы расширяем нашу функциональность,
// а не изменяем наш класс.
