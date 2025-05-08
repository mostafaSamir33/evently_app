import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  changeAppTheme() {
    if (themeMode == ThemeMode.light) {
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.light;
    }
    notifyListeners();
  }

  // changeAppThemeForDropDownMenu(value) {
  //   if(value==ThemeMode.light){
  //     themeMode=ThemeMode.light;
  //   }else{
  //     themeMode=ThemeMode.dark;
  //   }
  //   notifyListeners();
  // }
}
