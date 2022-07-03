/// learn about Arithmetic operator
void main() {
  // ----------------------------------------------------------------------------------
  // operator           | arti                          | operator penugasan
  // ----------------------------------------------------------------------------------
  // (+)                | penambahan                    | var a +=  1
  // (-, -expression)   | pengurangan atau negatif      | var a -=  1
  // (*)                | perkalian                     | var a *=  1
  // (/)                | pembagian, output double      | var a /=  1
  // (~/)               | pembagian, output int, floor  | var a ~/= 1
  // (%)                | sisa bagi / modulo            | var a %=  1
  // ----------------------------------------------------------------------------------

  print(1 + 2);
  print(1 - 2);
  print(-2);
  print(2 * 7);
  print(34 / 7);
  print(34 ~/ 7);
  print(100 % 3);

  // ----------------------------- increment & decrement ------------------------------
  // ----------------------------------------------------------------------------------
  // operator     | arti                          
  // ----------------------------------------------------------------------------------
  // var++        | var = var + 1 (expression is var)
  // ++var        | var = var + 1 (expression is var + 1)
  // var--        | var = var - 1 (expression is var)
  // --var        | var = var - 1 (expression is var - 1)
  // ----------------------------------------------------------------------------------

  // var number  = 3;
  // var number2 = number++;

  var number  = 3;
  var number2 = ++number;

  print('number = $number, number2 = $number2');
}
