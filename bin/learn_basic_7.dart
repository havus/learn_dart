
void executorPrint(String args, Function(String) printer) {
  printer(args);
}

int summarize(List<int> numbers) {
  var result = 0;

  for (var value in numbers) {
    result += value;
  }
  return result;
}

void executorSum(List<int> numbers, int Function(List<int>) func) {
  print("sum of $numbers = ${func(numbers)}");
}

void main() {
  executorPrint("Hello world =)", print);
  executorSum([1,2,3,4,5], summarize);

  executorPrint("Hello world =)", (String arg) => {
    print(arg.toUpperCase())
  });
}
