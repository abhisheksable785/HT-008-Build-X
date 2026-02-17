import 'package:flutter/material.dart';
import 'package:smartcity/screens/auth/splash.dart';
import 'screens/auth/login_screen.dart';

void main() {
  runApp(const WasteWiseApp());
}

class WasteWiseApp extends StatelessWidget {
  const WasteWiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WasteWise',
      theme: ThemeData(
        primaryColor: const Color(0xff2ecc71),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff2ecc71),
        ),
      ),
      home: const SplashScreen(),

    );
  }
}