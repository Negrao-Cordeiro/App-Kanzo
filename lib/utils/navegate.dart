import 'package:flutter/cupertino.dart';

class Navegate {
  static void goTowelcome(BuildContext context) {
    Navigator.pushNamed(context, "/welcome");
  }
  static void goTologin(BuildContext context) {
    Navigator.pushNamed(context, "/login");
  }
}
