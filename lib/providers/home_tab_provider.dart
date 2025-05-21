import 'package:evently/models/category_slider_model.dart';
import 'package:flutter/cupertino.dart';

class HomeTabProvider extends ChangeNotifier {
  CategoryValues? selectedCategory = CategoryValues.all;

  void editSelectedCategory(CategoryValues categoryValue) {
    selectedCategory = categoryValue;
    notifyListeners();
  }
}
