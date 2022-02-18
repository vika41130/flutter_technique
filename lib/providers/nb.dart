
import 'package:flutter/material.dart';

class NBModel extends ChangeNotifier {
  int count = 0;
  void increase() {
    count++;
    notifyListeners();
  }
}