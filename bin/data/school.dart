
abstract class School {
  int?    id;
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

mixin EqualableSchool on School {
  // bool operator ==(Object other) {
  //   if (other is School) {
  //     if (this.runtimeType != other.runtimeType) return false;

  //     if (this.id != other.id)      return false;
  //     if (this.name != other.name)  return false;

  //     return true;
  //   }

  //   return false;
  // }

  // int get hashCode {
  //   var result = runtimeType.hashCode;
  //   result += id.hashCode;
  //   result += name.hashCode;

  //   return result;
  // }

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
    other is School &&
      runtimeType == other.runtimeType &&
      id == other.id &&
      name == other.name;

  @override
  int get hashCode => runtimeType.hashCode ^ id.hashCode ^ name.hashCode;
}

class KinderGarden extends School {
  int? id;

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

class University extends School with EqualableSchool {
  int?    id;
  String? title;
  String  _category = "";

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

// https://dart-lang.github.io/linter/lints/unnecessary_getters_setters.html