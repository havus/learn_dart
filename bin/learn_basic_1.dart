/// this is documentation of main function
/// just learn about variable and data types
void main() {
  String name = "John";

  // avoid var without direct declaration, like: (keyword: dynamic)
  // var name2;
  // name2 = "doe";

  // better use
  var name2 = "Doe";

  final String name3 = "Budi";
  // final name3 = "Budi"; // output same as above

  // name4 = 'Andi' + 'Budi';
  var name4 = 'Andi' 'Budi';

  print("Hello world ${name} ${name2} ${name3}");
  print('Hello world $name, this is \$ char. and $name4');

  var longStringMultiLine = '''
      this is a long string,
      single quote 3x
  ''';

  print(longStringMultiLine);

  final array1 = [1, 2, 3]; // masih bisa modifikasi dalam objectnya, tapi gabisa re-declare
  const array2 = [1, 2, 3];

  array1[0] = 5;
  /**
   * array2[0] = 5;
   *    Unhandled exception:
   *    Unsupported operation: Cannot modify an unmodifiable list
   *    #0      UnmodifiableListMixin.[]= (dart:_internal/list.dart:90:5)
   *    #1      main (file:///${REPO_PATH}/learn_dart/bin/learn_string.dart:21:9)
   *    #2      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:297:19)
   *    #3      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:192:12)
   */

  print(array1);
  print(array2);

  late var value = getValueLog(); // late = lazy load
  print("checkpoint late");
  // print("value=${value}"); // to trigger "late"



  // ---------------------------------------- symbol ----------------------------------------
  // Symbol symbol1 = #learning_dart;
  Symbol symbol1 = Symbol("Learning Dart");
  print('this is symbol $symbol1');


  // ---------------------------------------- number ----------------------------------------
  int number = 7;
  // number = 7.5; // will raise error # => `double number2 = 7.5;`
  print("number=${number}");

  num number2 = 7;
  number2 = 7.5;
  print("number2=${number2}");



  // ---------------------------------------- boolean ----------------------------------------
  bool wannaLearnMore = true;
  print("wannaLearnMore=${wannaLearnMore}");


  // ---------------------------------------- null ----------------------------------------
  // var willBeBlank; // will NOT error
  // int willBeBlank; // will NOT error if we dont print it
  int? willBeBlank; // will NOT error if we dont print it
  print("willBeBlank = ${willBeBlank}, data type is ${willBeBlank.runtimeType}"); // willBeBlank = null, data type is Null


  // ---------------------------------------- dynamic ----------------------------------------
  dynamic upToYou = 'this is string datatype';
  upToYou = 5;
  // upToYou = 1 == 1;

  print('upToYou = $upToYou');
  print('upToYou is a string? => ${upToYou is String}');
  print('upToYou is a dynamic? => ${upToYou is dynamic}');
  print('upToYou data type is ${upToYou.runtimeType}'); // upToYou data type is int


  // ------------------------------ data types and conversion ------------------------------
  dynamic allTypes = 100;
  // var forceParse = allTypes as String; // -> error
  print('allTypes data type is ${allTypes.runtimeType}'); // allTypes data type is int
  var forceParse = allTypes as int;
  print('forceParse data type is ${forceParse.runtimeType}'); // forceParse data type is int

  String inputString      = '10000';
  int inputInt            = int.parse(inputString);

  double doubleFromInt    = inputInt.toDouble();
  int intFromDouble       = doubleFromInt.toInt();

  String stringFromInt    = inputInt.toString();
  String stringFromDouble = double.parse(inputString).toString();
  String stringFromBool   = true.toString();

  print('inputInt = $stringFromDouble');
  print('inputString is a string? => ${inputString is String}');
  print('inputString is NOT a string? => ${inputString is! String}');
  print('inputString data type is ${inputString.runtimeType}'); // inputString data type is String
}

String getValueLog() {
  print("function invoked!"); // this will NOT be printed if we use "late"
  return "some value";
}