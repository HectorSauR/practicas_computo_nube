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
          title: Text('Practica 10 - Pokédex'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView.builder(
          itemCount: pokemons.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {},
              title: Text(pokemons[index]),
              leading: const CircleAvatar(
                radius: 22.0,
                backgroundImage: NetworkImage(
                    "https://w7.pngwing.com/pngs/1014/126/png-transparent-pokeball-illustration-pokemon-go-pokeball-trademark-logo-nintendo-3ds-thumbnail.png"),
              ),
              trailing: const Icon(Icons.arrow_right),
            );
          },
        ));
  }
}
