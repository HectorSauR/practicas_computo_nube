import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  static const pokemons = [
    "Normal",
    "Fighting",
    "Flying",
    "Poison",
    "Ground",
    "Rock",
    "Bug",
    "Ghost",
    "Steel",
    "Fire",
    "Water",
    "Grass",
    "Electric",
    "Psychic",
    "Ice",
    "Dragon",
    "Dark",
    "Fairy",
    "Unknown",
    "Shadow",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 09 - Pokédex'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          for (var pokemon in pokemons)
            ListTile(
              contentPadding:
                  EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0),
              title: Text(pokemon),
              leading: CircleAvatar(
                radius: 22.0,
                backgroundImage: NetworkImage(
                    "https://w7.pngwing.com/pngs/1014/126/png-transparent-pokeball-illustration-pokemon-go-pokeball-trademark-logo-nintendo-3ds-thumbnail.png"),
              ),
              trailing: Icon(Icons.arrow_right),
            ),
        ],
      ),
    );
  }
}
