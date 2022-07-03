/// learn about List and Set a.k.a array
void main() {
  // learnIfCondition();
  learnSwitchCondition();
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
