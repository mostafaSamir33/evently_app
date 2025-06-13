import 'package:evently/models/category_slider_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import '../common/services/firebase_services.dart';
import '../models/user_model.dart';

class HomeTabProvider extends ChangeNotifier {
  CategoryValues? selectedCategory = CategoryValues.all;
  // UserModel? userModel;

  void editSelectedCategory(CategoryValues categoryValue) {
    selectedCategory = categoryValue;
    notifyListeners();
  }

  // Future<void> getUser() async {
  //   userModel = await FirebaseServices.getUserInfo(
  //       FirebaseAuth.instance.currentUser!.uid);
  //   notifyListeners();
  // }
}
