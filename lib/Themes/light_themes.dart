import 'package:azure_quiz_study_app/Themes/screen_size.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme(BuildContext context) {
  ScreenSize.init(context);
  return ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: Colors.orangeAccent,
      secondary: Colors.redAccent,
      surface: Colors.grey[100]!,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.black87,
    ),
    fontFamily: 'RubikVinyl',
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: ScreenSize.responsiveText(7),
        fontWeight: FontWeight.bold,
        color: Colors.orange[800],
        fontFamily: 'Atma',
      ),
      bodyLarge: TextStyle(
        fontSize: 22,
        fontFamily: 'Permanent_Marker',
        color: Colors.black87,
        //color: Colors.red,
        // fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontFamily: 'RobotoCondensed',
        color: Colors.black54,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.orangeAccent,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.redAccent,
    ),
  );
}
