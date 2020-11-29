import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {

  final List<int> _values = [];

  int get total {
    return _values.fold(0, (total, current) => total + current);
  }

  @override
  String toString() {
    return 'value:$_values';
  }

  void add(int value) {
    _values.add(value);
    notifyListeners();
  }

  void remove(int value) {
    _values.remove(value);
    notifyListeners();
  }
}
