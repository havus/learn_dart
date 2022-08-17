import './data/school.dart';

void main() {
  KinderGarden playground = KinderGarden("Wadaw University");
  print("Playground name: ${playground.name}");

  University wadawUniv = University("Wadaw");
  University wadawUniv2 = University("Wadaw");

  print("University name: ${wadawUniv.name}");
  print("University category: ${wadawUniv.category}");

  print("debug ==: ${wadawUniv == wadawUniv2}");
  print("debug ==: ${wadawUniv == playground}");

  print("debug hashCode with wadawUniv2: ${wadawUniv.hashCode} with ${wadawUniv2.hashCode}");
  print("debug hashCode with playground: ${wadawUniv.hashCode} with ${playground.hashCode}");
  // debug hashCode with wadawUniv2: 552581179 with 552581179
  // debug hashCode with playground: 552581179 with 179608156
}
