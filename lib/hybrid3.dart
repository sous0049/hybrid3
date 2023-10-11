// // ignore_for_file: unnecessary_this

// import 'dart:convert';

// class Students {
//   late List<Map<String, String>> people;

//   Students(List<Map<String, String>> students) {
//     this.people = students;
//   }

//   void sort(String field) {
//     people.sort((a, b) => a[field].compareTo(b[field]));
//   }

//   void output() {
//     for (var person in people) {
//       print(person);
//     }
//   }

//   void plus(Map<String, String> person) {
//     people.add(person);
//   }

//   void remove(String field) {
//     people.removeWhere((person) => person[field] != null);
//   }
// }
