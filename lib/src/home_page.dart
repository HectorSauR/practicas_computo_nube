import 'package:flutter/material.dart';
import 'package:practicas_computo_nube/src/game.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openGame(int amount, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GamePage(cantidad: amount),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Memorama rick y morty"),
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Selecciona la cantidad de pares:"),
            const SizedBox(
              height: 20,
            ),
            OverflowBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                    child: const Text('8'),
                    onPressed: () {
                      _openGame(8, context);
                    }),
                TextButton(
                    child: const Text('10'),
                    onPressed: () {
                      _openGame(10, context);
                    }),
                TextButton(
                    child: const Text('12'),
                    onPressed: () {
                      _openGame(12, context);
                    }),
              ],
            )
          ]),
    );
  }
}
