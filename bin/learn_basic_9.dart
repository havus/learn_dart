class Customer {
  String fullName   = '';
  String firstName  = '';
  String lastName   = '';

  Customer(this.fullName)
    : this.firstName = fullName.split(" ")[0],
      this.lastName = fullName.split(" ")[1] {
    print("${this.firstName} - ${this.lastName}");
  }
}

// constant constructor
class ImmutablePoint {
  final x;
  final y;

  const ImmutablePoint(this.x, this.y);
}

void main() {
  Customer sandi = Customer("Sandi Utama");

  var point1 = ImmutablePoint(1, 2);
  var point2 = ImmutablePoint(1, 2);

  print("point1 == point2 is ${point1 == point2}");

  var point3 = const ImmutablePoint(1, 2);
  var point4 = const ImmutablePoint(1, 2);

  print("point3 == point4 is ${point3 == point4}");
}
