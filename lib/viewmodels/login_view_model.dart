import 'package:flutter/cupertino.dart';

class LoginViewModel extends ChangeNotifier {
  String currentText = "";
  String currentPW = "";

  void modifyValue(String newValue, String newPW) {
    currentText = newValue;
    currentPW = newPW;
    notifyListeners();
  }
}