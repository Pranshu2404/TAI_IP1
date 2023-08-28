import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_finderr/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const Splash(),
         
        theme: ThemeData.light().copyWith(
            textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme)));
  }
}
