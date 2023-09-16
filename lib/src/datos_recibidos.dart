import 'package:flutter/material.dart';
import 'package:practicas_computo_nube/src/home_page.dart';

class DatosPage extends StatelessWidget {
  final Data? data;
  const DatosPage({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos Recibidos'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Los datos son:'),
            Text('Nombre: ${data?.texto}'),
            Text('Sexo: ${data?.sexo}')
          ],
        ),
      ),
    );
  }
}