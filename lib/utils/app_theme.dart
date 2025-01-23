import 'package:flutter/material.dart';

class AppTheme{
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.white,
    indicatorColor: Colors.black,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(centerTitle: true, backgroundColor: Colors.white, iconTheme: IconThemeData(color: Colors.black),),
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold,),
      headlineMedium: TextStyle(fontSize: 16,color: Colors.black, fontWeight: FontWeight.bold,),
      headlineSmall: TextStyle(fontSize: 14,color: Colors.black, fontWeight: FontWeight.bold,),
      labelLarge: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold,),
      labelMedium: TextStyle(fontSize: 24,color: Colors.black, fontWeight: FontWeight.bold,),
      labelSmall: TextStyle(fontSize: 24,color: Colors.white, fontWeight: FontWeight.bold,),
      titleLarge: TextStyle(fontSize: 24,color: Colors.black, fontWeight: FontWeight.bold,),
    )
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black,
    indicatorColor: Colors.white,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(centerTitle: true, backgroundColor: Colors.black, iconTheme: IconThemeData(color: Colors.white),),
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold,),
      headlineMedium: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold,),
      headlineSmall: TextStyle(fontSize: 14,color: Colors.white, fontWeight: FontWeight.bold,),
      labelLarge: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.bold,),
      labelMedium: TextStyle(fontSize: 24,color: Colors.white, fontWeight: FontWeight.bold,),
      labelSmall: TextStyle(fontSize: 24,color: Colors.white, fontWeight: FontWeight.bold,),
    )
  );
}