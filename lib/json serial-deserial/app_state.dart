import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class AppState extends ChangeNotifier {
  String temp = "";

  void updateTemp(String temp) {
    this.temp = temp;
    notifyListeners();
  }
}
