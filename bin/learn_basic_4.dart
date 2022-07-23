import 'package:collection/collection.dart'; // .forEachIndexed

/// learn about List and Set a.k.a array
void main() {
  // learnIfCondition();
  // learnSwitchCondition();
  // learnTernaryOperator();
  // learnForLoop();
  // learnWhileLoop();
  // learnDoWhileLoop();
  // learnBreakAndContinueLoop();
  learnForInLoop();
}

void learnIfCondition() {
  var score = 100;

  if (score == 100) {
    print('score $score perfecto mundo!');
  } else if (score > 75) {
    print('score $score more than 75');
  } else {
    print('score $score under 75');
  }
}

void learnSwitchCondition() {
  var grade = 'D';

  switch (grade) {
    case 'A':
      print('You got \$100, kindly please check your email!');
      break;
    case 'B':
      print('You got \$70, kindly please check your email!');
      break;
    case 'C':
      print('You got \$30, kindly please check your email!');
      break;
    case 'D':
      print('You got nothing, sorry');
      break;
    default:
      print('Case unpredictable!');
  }
}

void learnTernaryOperator() {
  var score = 70;

  print(score > 75 ? 'Good job' : 'You must learn harder');
}

void learnForLoop() {
  // for (;;) {
  //   print("This is infinite loop");
  // }

  // var counter = 1;
  // for (;counter <= 10;) {
  //   print("Counter = $counter");
  //   counter++;
  // }

  for (var counter = 1; counter <= 10; counter++) {
    print("Counter for = $counter");
  }
}

void learnWhileLoop() {
  var counter = 1;

  while (counter <= 10) {
    print("Counter while = $counter");
    counter++;
  }
}

void learnDoWhileLoop() {
  var counter = 1;

  // using while
  while (counter < 1) {
    print("Counter while = $counter"); // will NOT run
    counter++;
  }

  // using do while
  do {
    print("Counter dowhile = $counter");  // will run first
    counter++;
  } while (counter < 1);
}

void learnBreakAndContinueLoop() {
  for (var counter = 1; counter <= 100; counter++) {
    if (counter % 2 == 0) {
      continue;
    }

    print("$counter is odd number");

    if (counter >= 10) {
      print("$counter >= 10, break");
      break;
    }
  }
}

void learnForInLoop() {
  var names = <String>['Andi', 'Budi', 'Cena'];
  
  // without for in
  // for (var i = 0; i < names.length; i++) {
  //   print("names[$i] = ${names[i]}");
  // }


  // with for in, but we can't access index
  // for (var value in names) {
  //   print(value);
  // }


  // with forEachIndexed(package:collection/collection.dart), we can access index
  names.forEachIndexed((index, element) {
    print('index: $index, element: $element');
  });
}
