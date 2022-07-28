class Person {
  String  name = "default";
  int?    age;
  String? address;
  String  gender;

  // this is constructor
  Person(this.gender, [String? name]) {
    if (name != null) {
      // name = paramName;
      this.name = name;
    }
  }

  // named params constructor
  Person.withGender(this.gender);

  // redirecting constructor
  Person.withName(String name) : this("", name);

  // redirecting to named constructor
  Person.withSirName(String name) : this.withName("Sir. $name");

  void sayHelloTo(String paramName) {
    print("Hello $paramName, my name is $name");
  }

  void sayHello() => print("Hello, my name is $name");
}

// extension SayGoodByeOnPerson on Person {
extension on Person {
  void sayGoodBye() => print("Goodbye...");
}

class Apple {
  int quantity = 0;

  // operators: < > <= >= + - / ~/ * % | ^ & << >> >>> [] []= ~ ==
  void operator +(int paramNum) {
    quantity += paramNum;
  }
}

void main() {
  // Person andi = new Person(); // unnecessary `new` keyword -> more: https://dart-lang.github.io/linter/lints/unnecessary_new.html
  // Person andi = Person("male");
  Person andi   = Person("male", "Andi ok");
  Person budi   = Person.withGender("male");
  Person cila   = Person.withName("cila");
  Person delta  = Person.withSirName("delta");
  print("after init ${andi.name}");

  andi.name = "Andi";

  print(andi);
  print(andi.gender);
  print(andi.name);
  print(andi.age);
  print(andi.address);

  print("budi gender: ${budi.gender}");
  print("cila name: ${cila.name}");
  print("delta name: ${delta.name}");

  andi.sayHelloTo('Budi');
  andi.sayHello();
  andi.sayGoodBye();

  var apple = Apple();
  apple + 3;
  print("apple.quantity = ${apple.quantity}");
}
