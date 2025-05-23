import 'package:flutter/material.dart';

final mainColorL = Color.fromARGB(255, 53, 200, 218);
final secornadyColorL = Color.fromARGB(255, 185, 234, 238);
final thirdColorL = Color.fromARGB(255, 122, 85, 69);
final fontColorL = Colors.white;

final textstyle = TextTheme(
  bodyLarge: TextStyle(
    fontSize: 55,
    color: fontColorL,
    fontFamily: 'Simply Charming',
  ),
  bodyMedium: TextStyle(
    fontSize: 100,
    color: fontColorL,
    fontFamily: 'Simply Charming',
  ),
  bodySmall: TextStyle(
    fontSize: 30,
    color: fontColorL,
    fontFamily: 'Simply Charming',
  ),
);

final _navbar = BottomNavigationBarThemeData(
  backgroundColor: mainColorL,
  selectedLabelStyle: TextStyle(fontSize: 20),
  unselectedLabelStyle: TextStyle(fontSize: 15),

  selectedItemColor: thirdColorL,
  unselectedItemColor: fontColorL,
);
final _navrail = NavigationRailThemeData(
  backgroundColor: mainColorL,
  selectedIconTheme: IconThemeData(color: thirdColorL, size: 40),
  unselectedIconTheme: IconThemeData(color: fontColorL, size: 30),

  selectedLabelTextStyle: TextStyle(
    fontSize: 15,
    color: thirdColorL,
    fontFamily: 'Simply Charming',
  ),
  unselectedLabelTextStyle: TextStyle(
    fontSize: 11,
    color: fontColorL,
    fontFamily: 'Simply Charming',
  ),

  useIndicator: true,
  indicatorColor: secornadyColorL,
);

final lightversion = ThemeData(
  scaffoldBackgroundColor: secornadyColorL,
  textTheme: textstyle,
  appBarTheme: AppBarTheme(
    backgroundColor: mainColorL,
    titleTextStyle: TextStyle(fontSize: 40, color: fontColorL),
  ),

  bottomNavigationBarTheme: _navbar,

  navigationRailTheme: _navrail,

  switchTheme: SwitchThemeData(
    
  ),
);

final darkversion = ThemeData(
  scaffoldBackgroundColor: Colors.black54,
  textTheme: textstyle,
  appBarTheme: AppBarTheme(
    backgroundColor: mainColorL,
    titleTextStyle: TextStyle(fontSize: 40, color: fontColorL),
  ),

  bottomNavigationBarTheme: _navbar,

  navigationRailTheme: _navrail,
);