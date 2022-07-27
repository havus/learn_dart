class Person {
  String  name = "default";
  int?    age;
  String? address;

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
  Person andi = Person();
  andi.name = "Andi";

  print(andi);
  print(andi.name);
  print(andi.age);
  print(andi.address);

  andi.sayHelloTo('Budi');
  andi.sayHello();
  andi.sayGoodBye();

  var apple = Apple();
  apple + 3;
  print("apple.quantity = ${apple.quantity}");
}
