import 'package:azure_quiz_study_app/Providers/themes_provider.dart';
import 'package:azure_quiz_study_app/Themes/dark_themes.dart';
import 'package:azure_quiz_study_app/Themes/light_themes.dart';
import 'package:azure_quiz_study_app/Pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'AzureIQ',
      theme: lightTheme(context),
      darkTheme: darkTheme(context),
      themeMode: themeProvider.themeMode,
      home: HomePage(),
    );
  }
}
