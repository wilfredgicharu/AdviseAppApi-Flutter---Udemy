import 'package:flutter/material.dart';

//adding dark or bright theme
class ThemeService extends ChangeNotifier{
  bool isDarkModeOn = false;

  void toggleTheme(){
    isDarkModeOn = !isDarkModeOn;
    notifyListeners();
  }
}