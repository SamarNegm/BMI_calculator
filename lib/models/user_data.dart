import 'dart:math';

class UserData {
  final double height;
  final int age;
  final int weight;
  final bool male;

  UserData({this.height, this.age, this.weight, this.male});
  claculateBmi() {
    return (weight / pow((height / 100), 2));
  }
}
