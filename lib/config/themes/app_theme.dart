import 'package:flutter/material.dart';

final appTheme = ThemeData.light().copyWith(


  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    unselectedIconTheme: IconThemeData(color: Colors.grey),
    selectedIconTheme: IconThemeData(color: Colors.blue),
    unselectedItemColor: Colors.grey,
    selectedItemColor: Colors.blue,
    showUnselectedLabels: true,
    elevation: 5
  ),
);