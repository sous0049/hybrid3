import 'package:hybrid3/hybrid3.dart' as hybrid3;
import 'dart:convert';

class Students {
  Students(List<Map<String, String>> students) {
    this.people = students;
  }

  late List<Map<String, String>> people;

  void sort(String field) {
    people.sort((a, b) => a[field]!.compareTo(b[field]!));
  }

  void output() {
    for (var person in people) {
      print(person);
    }
  }

  void plus(Map<String, String> person) {
    people.add(person);
  }

  void remove(String field) {
    people.removeWhere((person) => person.containsValue(field));
  }
}

void main() {
  String json = '''
    [
      {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
      {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
      {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
      {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
    ]
  ''';

  // List<Map<String, String>> studentsData = jsonDecode(json);
  // Students students = Students(studentsData);

  List<dynamic> decodedData = jsonDecode(json);

  // Convert the dynamic data to the desired format
  List<Map<String, String>> studentsData = [];
  for (var item in decodedData) {
    if (item is Map<String, dynamic>) {
      studentsData.add(Map<String, String>.from(item));
    }
  }

  Students students = Students(studentsData);

  students.sort("first");

  students.output();

  students.plus(
      {"first": "John", "last": "Doe", "email": "johnd@algonquincollege.com"});

  students.output();

  students.remove('Robillard');

  students.output();
}
