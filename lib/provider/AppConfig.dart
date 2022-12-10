import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
class AppConfig extends ChangeNotifier{
  String Language = 'en';
  ThemeMode themes = ThemeMode.light;
  void appLanguage (String NewLanguage){
    if(Language == NewLanguage){
      return;
    }
    Language = NewLanguage;
    notifyListeners();
  }
  void ChangeTheme (ThemeMode NewTheme){
    if(themes == NewTheme){
      return;
    }
    themes = NewTheme;
    notifyListeners();
  }
}