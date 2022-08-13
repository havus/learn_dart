// learn interface
import './data/car.dart';

abstract class HasBrand {
  String getBrand();
}

// class Fortuner extends Car { // will not error if we dont redefine attributes and methods
// class Fortuner implements Car, A, B, C { // can implement multiple class
class Fortuner implements Car, HasBrand {
  String name = "Fortuner";

  void drive() {
    print("Fortuner is running...");
  }

  int getTier()     => 10;
  String getBrand() => "Toyota";
}

void main() {
  var car1 = Fortuner();
  car1.drive();
  print("tier ${car1.getTier()}");
  print("brand ${car1.getBrand()}");
}
