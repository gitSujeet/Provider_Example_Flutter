import 'package:flutter/material.dart';

class NumberProvider extends ChangeNotifier{

  int count;

  NumberProvider({
    this.count = 0
});

  void increaseCount() async{
    count++;
    notifyListeners();
  }

  void decreaseCount() async{
    count--;
    notifyListeners();
  }

  void resetCount() async {
    count = 0;
    notifyListeners();
  }

}