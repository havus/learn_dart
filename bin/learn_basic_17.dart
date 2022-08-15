import './data/school.dart';

void main() {
  KinderGarden playground = KinderGarden("Wadaw University");
  print("Playground name: ${playground.name}");

  University wadawUniv = University("Wadaw");
  University wadawUniv2 = University("Wadaw");

  print("University name: ${wadawUniv.name}");
  print("University category: ${wadawUniv.category}");

  print("same: ${wadawUniv == wadawUniv2}");
  print("same: ${wadawUniv == playground}");
}
