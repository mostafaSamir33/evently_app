import 'package:flutter/cupertino.dart';

class LocalizationProvider extends ChangeNotifier {
  String appLocalization = 'en';

  changeLocalization() {
    if (appLocalization == 'en') {
      appLocalization = 'ar';
    } else {
      appLocalization = 'en';
    }
    notifyListeners();
  }

String getAppLocaleString(){
    return appLocalization=='en'?'ar':'en';
}

}
