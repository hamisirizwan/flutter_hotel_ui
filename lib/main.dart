import 'package:flutter/material.dart';
import 'package:hotel_ui/pages/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotely',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        inputDecorationTheme: const InputDecorationTheme(
          // filled: true,
          // fillColor: Colors.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
      home: OnboardingScreen(),
    );
  }
}
