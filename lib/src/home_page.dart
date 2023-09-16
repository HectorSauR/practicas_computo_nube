import 'package:flutter/material.dart';
import 'package:practicas_computo_nube/src/datos_recibidos.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class Data{
  String texto;
  String sexo;

  Data({required this.texto, required this.sexo});
}

class _HomePageState extends State<HomePage> {
  final ctrlnom = TextEditingController();
  final data = Data(texto: '', sexo: '');
  int _valor = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[200],
        title: const Text('Practica 03'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: ctrlnom,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              hintText: 'Ingresa el nombre',
              contentPadding: EdgeInsets.all(20)
            ),
          ),
          const SizedBox(height: 20,),
          DropdownButton(
            value: _valor,
            items: const [
              DropdownMenuItem(value: 1, child: Text('Mujer')),
              DropdownMenuItem(value: 2, child: Text('Hombre'))
            ],
            onChanged: (selected){
              setState(() {
                _valor = selected ?? 1;
              });
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orange[200], onPrimary: Colors.white
            ),
            child: const Text('Enviar'),
            onPressed: (){
              setState(() {
                data.texto = ctrlnom.text;

                if(_valor == 1){
                  data.sexo = 'Mujer';
                }else{
                  data.sexo = 'Hombre';
                }

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DatosPage(data: data)));
              });
            },
          )
      ],
      ),
    );
  }
}