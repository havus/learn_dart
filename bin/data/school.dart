
abstract class School {
  String? name;

  // access modifier
  // this _var can only be used in this file
  int _studentCount = 0;

  int minAge = 0;
  int maxAge = 0;

  // abstract method
  void promote();

  int getStudentCount() {
    return _studentCount;
  }
}

class KinderGarden extends School {
  KinderGarden(String name) { // can NOT ```KinderGarden(this.name);```
    this.name = name;
  }

  void promote() {
    print("Let's have fun with us!");
  }
}

// class ElementarySchool extends School {
// }

// class JuniorHighSchool extends School {
// }

// class SeniorHighSchool extends School {
// }

// class VocationalSchool extends School {
// }

class University extends School {
  String? title;
  String _category = "";

  University(String name) {
    this.name = "$name University";
  }

  void promote() {
    print("To make our generation smarter");
  }

  // THIS IS example of bad code, but for education purpose, it's okay :v
  // see: https://dart-lang.github.io/linter/lints/unnecessary_getters_setters.html

  // String get category {
  //   return _category;
  // }

  // set category(String value) {
  //   // or put some validation
  //   this._category = value;
  // }

  String get category => _category;
  set category(String value) => _category = value;
}

https://dart-lang.github.io/linter/lints/unnecessary_getters_setters.html