import 'dart:convert';

import 'package:flutter/material.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 12 - Leer JSON'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
          child: FutureBuilder(
        future:
            DefaultAssetBundle.of(context).loadString('assets/pokedex.json'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // Muestra un indicador de carga mientras se carga el JSON.
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            var showData = json.decode(snapshot.data.toString());
            return ListView.builder(
              itemCount: showData.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(showData[index]['name']['english']),
                  subtitle: Text(showData[index]['type'].toString()),
                );
              },
            );
          }
        },
      )),
    );
  }
}
