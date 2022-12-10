import 'package:flutter/material.dart';

class MyThemes {
  static Color primaryLight = Color(0xffDFECDB);
  static Color primaryDark = Color(0xff060E1E);
  static Color blueColor = Color(0xff5D9CEC);
  static Color whiteColor = Color(0xffFFFFFF);
  static Color greenColor = Color(0xff61E757);
  static Color redColor = Color(0xffEC4B4B);
  static Color greyColor = Colors.grey;
  static Color blackColor = Colors.black;
  static ThemeData LightTheme = ThemeData(
      primaryColor: primaryLight,
      iconTheme: IconThemeData(color: blueColor),
      scaffoldBackgroundColor: primaryLight,
      appBarTheme: AppBarTheme(
        color: blueColor,
        iconTheme: IconThemeData(color: whiteColor),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: whiteColor,
        selectedItemColor: blueColor,
        unselectedItemColor: greyColor,
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: whiteColor,
        ),
        headline2: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: blueColor,
        ),
        headline3: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: greenColor,
        ),
        headline4: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
        headline5: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
      ));
  static ThemeData DarkTheme = ThemeData(
    primaryColor: primaryDark,
      scaffoldBackgroundColor: primaryDark,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: blackColor,
        selectedItemColor: blueColor,
        unselectedItemColor: greyColor,
      ),
      appBarTheme: AppBarTheme(
        color: blueColor,
        iconTheme: IconThemeData(color: blackColor),
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
        headline2: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: blueColor,
        ),
        headline3: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: greenColor,
        ),
        headline4: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: whiteColor,
        ),
        headline5: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: whiteColor,
        ),
      )
  );

}
