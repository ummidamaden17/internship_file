abstract class EventListener {
  void update(String filename);
}

class EventManager {
  final Map<String, List<EventListener>> _listeners = {};

  void subscribe(String eventType, EventListener listener) {
    _listeners.putIfAbsent(eventType, () => []).add(listener);
  }

  void unsubscribe(String eventType, EventListener listener) {
    _listeners[eventType]?.remove(listener);
  }

  void notify(String eventType, String data) {
    if (_listeners.containsKey(eventType)) {
      for (var listener in _listeners[eventType]!) {
        listener.update(data);
      }
    }
  }
}

class Editor {
  final EventManager events = EventManager();
  String? file;

  void openFile(String path) {
    file = path;
    events.notify('open', file!);
  }

  void saveFile() {
    if (file != null) {
      events.notify('save', file!);
    }
  }
}

class LoggingListener implements EventListener {
  final String logFile;
  final String message;

  LoggingListener(this.logFile, this.message);

  @override
  void update(String filename) {
    print('$message $filename (Logged in $logFile)');
  }
}

class EmailAlertsListener implements EventListener {
  final String email;
  final String message;

  EmailAlertsListener(this.email, this.message);

  @override
  void update(String filename) {
    print('Sending email to $email: $message $filename');
  }
}

void main() {
  final editor = Editor();

  final logger =
      LoggingListener('/path/to/log.txt', 'Someone has opened file:');
  editor.events.subscribe('open', logger);

  final emailAlerts =
      EmailAlertsListener('admin@example.com', 'Someone has changed the file:');
  editor.events.subscribe('save', emailAlerts);

  editor.openFile('document.txt');
  editor.saveFile();
}
