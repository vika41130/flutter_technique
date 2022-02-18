import 'package:flutter/cupertino.dart';

class PumaModel extends ChangeNotifier {
  int count = 0;
  void increase() {
    count++;
    notifyListeners();
  }
}