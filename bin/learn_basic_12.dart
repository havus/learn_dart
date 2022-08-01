class Person {
  String? name = "";
  int salary = 100000;

  Person(this.name);

  String greet() {
    return "Hi bruh!";
  }

  String showSalary() {
    throw Exception('Not implmented method error');
  }
}

class CrazyPoor extends Person {
  int salary = 100; // field override

  CrazyPoor(String name) : super("Dumb $name");

  String showSalary() {
    return "im a rich man, my salary is $salary";
  }

  String beg() {
    return "do you have \$10?";
  }
}

class CrazyRich extends Person {
  int salary = 9999999;

  // CrazyRich() : super("Sir ") {
  //   print('oke');
  // }

  CrazyRich(String name) : super("Sir $name");
  // CrazyRich(String name) : super(name) {
  //   this.name = "Sir. $name";
  // }

  // method override
  String showSalary() {
    return "tbh im not a rich man, my salary is just $salary";
  }

  String bestRegards() {
    return "${super.greet()} Feel like home.";
  }
}

void explainSomeone(Person person) {
  if (person is CrazyPoor) {
    CrazyPoor poorman = person as CrazyPoor;
    print("${poorman.name}: ${poorman.beg()}");
  } else if (person is CrazyRich) {
    CrazyRich richman = person as CrazyRich;
    print("${richman.name}: ${richman.bestRegards()}");
  }
  print("name: ${person.name}, salary: ${person.salary}");
}

void main() {
  var mrx  = CrazyPoor("mrx");
  var sandi = CrazyRich("sandi");
  // var sandi = CrazyRich();

  print("${mrx.name}: ${mrx.showSalary()}");

  print("${sandi.name}: ${sandi.bestRegards()}");
  print("${sandi.name}: ${sandi.showSalary()}");

  // https://api.dart.dev/stable/2.14.4/dart-core/Object-class.html
  print("${mrx.runtimeType}");
  print("${sandi.runtimeType}");

  print("--------- Type check & Casts ---------");

  explainSomeone(mrx);
  print("--------------------------------------");
  explainSomeone(sandi);
}
