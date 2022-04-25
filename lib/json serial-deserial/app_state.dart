import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  String temp = "";

  void updateTemp(String temp) {
    this.temp = temp;
    notifyListeners();
  }
}
