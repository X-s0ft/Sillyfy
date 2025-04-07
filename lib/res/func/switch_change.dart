import 'package:flutter/material.dart';


bool langvalue = false;

class ThemeChanger extends ChangeNotifier{
  ThemeData _themeData;
  ThemeChanger(this._themeData);
  get getTheme => _themeData;
  
  void setTheme(ThemeData theme){
    _themeData = theme;
    notifyListeners();
  }

}


// void changeTheme() {
//   if (langvalue == false) {
//     themeD = lightversion;
//     dev.log('Белый');
//   } else {
//     themeD = darkversion;
//     dev.log('Чёрный');
//   }
// }
