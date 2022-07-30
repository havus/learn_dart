class Database {
  Database() {
    print("create new database connection");
  }

  // Database.get() : this();

  static Database database = Database();

  // factory constructor
  factory Database.get() {
    return database;
  }
}

void main() {
  // var db1 = Database.get();
  // var db2 = Database.get();

  // print("db1 == db2 is ${db1 == db2}");

  var db1 = Database.get();
  var db2 = Database.get();

  print("db1 == db2 is ${db1 == db2}");
}
