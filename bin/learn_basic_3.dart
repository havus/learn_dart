/// learn about List and Set a.k.a array
void main() {
  // learnList();
  // learnSet();
  // learnMap();
  learnDefaultValue();
}


// ----------------------------- List -----------------------------
// https://api.dart.dev/stable/2.13.4/dart-core/List-class.html
void learnList() {
  // List<int> listInt = [1, 2, 3];
  var listInt     = <int>[1, 2, 3]; // same as above
  var listDynamic = [1, 2, 3, 'string'];

  print('listInt = $listInt');
  print('listDynamic = $listDynamic');

  // listInt.add('string'); // error
  listInt.add(10);
  print('listInt = $listInt, length = ${listInt.length}');

  listInt[0] = 10;
  listInt.removeAt(2);
  print('listInt = $listInt, length = ${listInt.length}');
}

// ----------------------------- Set ------------------------------
void learnSet() {
  // tidak ada indexing (unique value), gabisa ngerubah data, hapus dulu baru add
  // Set<int> setInt = {};
  var setInt = { 1, 2, 3, 4, 5 };
  print('setInt = $setInt, length = ${setInt.length}');

  setInt.add(1);
  print('setInt = $setInt, length = ${setInt.length} after add');

  setInt.remove(3);
  setInt.remove('empty'); // will not raise error
  print('setInt = $setInt, length = ${setInt.length} after remove');
}

// ----------------------------- Map ------------------------------
void learnMap() {
  // Map<String, String> person = {};
  // var person = Map<String, String>();
  var person = <String, String>{};
  person['firstName'] = 'John';
  person['lastName']  = 'Doe';
  person['address']   = 'dummy address';

  // Map<String, String> person = {
  //  'firstName': 'john',
  //  'lastName':  'doe',
  //  'address':   'dummy address',
  // };

  person.remove('address');

  print('person = $person');
}

// ----------------------------- Default Value and Null Safety ------------------------------
void learnDefaultValue() {
  String? guest;

  var guestName = guest ?? 'guest';

  print('guestname is $guestName');

  // toLowerCase will not execute if guestName is null
  print('guestname lowercase is ${guestName?.toLowerCase()}');
}
