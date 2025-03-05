// Apply DRY (Don't Repeat Yourself)

void greetMorning(String name) {
  print("Good morning, " + name + "!");
}

void greetEvening(String name) {
  print("Good evening, " + name + "!");
}

void greet(String type, String name) {
  if (type == 'evening') {
    print('Good evening, $name!');
  } else {
    print('Good morning, $name!');
  }
}

void greets(String type, String name) {
  String greeting = (type == 'morning') ? 'Good morning' : 'Good evening';
  print('$greeting, $name!');
}
