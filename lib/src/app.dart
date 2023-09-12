import 'package:flutter/material.dart';
import 'package:practicas_computo_nube/src/page1.dart';
import 'package:practicas_computo_nube/src/page2.dart';
import 'package:practicas_computo_nube/src/page3.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 02',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Page1(),
      routes: {
        '/Page1': (context) => Page1(),
        '/Page2': (context) => Page2(),
        '/Page3': (context) => Page3(),
      },
    );
  }
}