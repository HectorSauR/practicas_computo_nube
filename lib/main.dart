import 'package:flutter/material.dart';
import 'package:practicas_computo_nube/src/home_page.dart';
import 'package:practicas_computo_nube/src/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      // home: const MaterialApp(title: 'Pracitca 04',home: HomePage(),),
    );
  }
}
