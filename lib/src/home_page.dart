import 'package:flutter/material.dart';
import 'package:practicas_computo_nube/src/datos_recibidos.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class Data{
  double? peso;
  double? estatura;
  double? imc;

  Data(double peso, double estatura){
    this.peso = peso;
    this.estatura = estatura;
    imc = peso / (estatura * estatura);
    imc = (imc!*10000);
  }

  String get_url_img(){
    if(imc! < 18){
      return 'assets/imc/seco.jpg';
    }

    if(imc! >= 18 && imc! < 25){
      return 'assets/imc/normal.jpg';
    }

    if(imc! >= 25 && imc! < 27){
      return 'assets/imc/obeso.jpg';
    }

    if(imc! >= 27 && imc! < 30){
      return 'assets/imc/obeso1.jpg';
    }

    if(imc! >= 30 && imc! < 40){
      return 'assets/imc/obeso2.jpg';
    }

    return 'assets/imc/obeso3.jpg';
  }

  String get_tipo(){
    if(imc! < 18){
      return 'Peso Bajo';
    }

    if(imc! >= 18 && imc! < 25){
      return 'Normal';
    }

    if(imc! >= 25 && imc! < 27){
      return 'Obesidad';
    }

    if(imc! >= 27 && imc! < 30){
      return 'Obesidad 1';
    }

    if(imc! >= 30 && imc! < 40){
      return 'Obesidad 2';
    }

    return 'Obesidad 3';
  }
}

class _HomePageState extends State<HomePage> {
  final ctrlpeso = TextEditingController();
  final ctrlestatura = TextEditingController();

  Data? data = null;
  double _valor = 1;

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
            controller: ctrlpeso,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Ingresa el peso',
              contentPadding: EdgeInsets.all(20)
            ),
          ),
          const SizedBox(height: 20,),
          TextField(
            controller: ctrlestatura,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              hintText: 'Ingresa la estatura',
              contentPadding: EdgeInsets.all(20)
            ),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orange[200], onPrimary: Colors.white
            ),
            child: const Text('Enviar'),
            onPressed: (){
              setState(() {
                double estatura = double.parse(ctrlestatura.text);
                double peso = double.parse(ctrlpeso.text);

                data = Data(peso, estatura);

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DatosPage(data: data)));
              });
            },
          )
      ],
      ),
    );
  }
}