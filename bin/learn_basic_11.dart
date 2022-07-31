class User {
  String? name;
  String? username;
  String? email;
}

User createUser() {
  return User();
}

User? createNullUser() {
  return null;
}

void main() {
  // var user = User()
  var user = createUser()
    ..name      = "user 1"
    ..username  = "user_1"
    ..email     = "user@mail.com";

  print("${user.name}, ${user.username}, ${user.email}");

  User? user2 = createNullUser()
    ?..name     = "user 2"
    ..username  = "user_2"
    ..email     = "user2@mail.com";

  print("${user2?.name}, ${user2?.username}, ${user2?.email}");
}
