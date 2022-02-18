
import 'package:flutter/material.dart';

class CountModel extends ChangeNotifier {
	int count = 0;

	void increaseCount() {
		count = count + 1;
		notifyListeners();
	}
}