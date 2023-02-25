import 'package:flutter/cupertino.dart';

class MyProvider with ChangeNotifier {
  int counter = 0;
  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  void decrementCounter() {
    counter--;
    notifyListeners();
  }
}
