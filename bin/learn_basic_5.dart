void main() {
  // learnFunctionOptionalParams('John', 'Doe', 'World'); // "John - Doe - World"
  // learnFunctionOptionalParams('John'); // "John - null - null"

  // learnFunctionDefaultParams('John'); // "John - "
  // learnFunctionNamedParams(firstName: 'John', lastName: 'Doe', age: 12); // John - Doe
  // learnFunctionNamedParams(lastName: 'Doe', age: 10); // null - Doe


  // print("sum = ${ learnFunctionParamList([10, 5]) }");
  // print("short sum = ${ learnFunctionShortExpression(1, 3) }");


  void helloInnerFunc() {
    print("hello, this is inner");
  }
  helloInnerFunc();
}

void learnFunctionOptionalParams(String param1, [String? param2, String? param3]) {
  print("learnFunctionOptionalParams: $param1 - $param2 - $param3");
}

void learnFunctionDefaultParams(String param1, [String param2 = '']) {
  print("learnFunctionDefaultParams: $param1 - $param2");
}

void learnFunctionNamedParams({String? firstName, String lastName = '', required int age}) {
  // firstName is possible null
  print("learnFunctionNamedParams: $firstName - $lastName, age: $age");
}

int learnFunctionParamList(List<int> numbers) {
  var result = 0;

  for (var value in numbers) {
    result += value;
  }

  return result;
}

int learnFunctionShortExpression(int first, int second) => first + second;

