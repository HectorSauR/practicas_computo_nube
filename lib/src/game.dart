import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class GamePage extends StatefulWidget {
  final int cantidad;

  const GamePage({super.key, required this.cantidad}); // Constructor corregido

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    int cantidad = widget.cantidad;

    return Scaffold(
      appBar: AppBar(
        title: Text('A jugar'),
        // Agregar un botón de retroceso en la AppBar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navegar hacia atrás cuando se presiona el botón de retroceso
            Navigator.of(context).pop();
          },
        ),
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: (cantidad / 2).round(),
        // Generate 100 widgets that display their index in the List.
        children: List.generate(24, (index) {
          return FlipCard(
            fill: Fill
                .fillBack, // Fill the back side of the card to make in the same size as the front.
            direction: FlipDirection.HORIZONTAL, // default
            side: CardSide.FRONT, // The side to initially display.
            front: Container(
              child: Text('Front'),
            ),
            back: Container(
              child: Text('Back'),
            ),
          );
        }),
      ),
    );
  }
}
