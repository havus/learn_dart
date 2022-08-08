import './data/school.dart';

void main() {
  // School school = School(); // The class 'School' is abstract and can't be instantiated.

  KinderGarden playground = KinderGarden("Semesta Berkata");
  print("Playground name: ${playground.name}");

  University wadawUniv = University("Wadaw");
  wadawUniv.category = "yeehaw";
  print("University name: ${wadawUniv.name}");
  print("University category: ${wadawUniv.category}");
}