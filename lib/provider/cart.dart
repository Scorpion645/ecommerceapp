import 'package:flutter/material.dart';
import '../data/data.dart';

class Cart with ChangeNotifier {

  List <Item> selectedItems = [];

  Addd(Item product) {
    selectedItems.add(product);
    notifyListeners();
  }
}
