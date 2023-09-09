import 'package:flutter/material.dart';
import 'package:practicas_computo_nube/src/myAlertDialog.dart';

class UserData extends StatefulWidget {
  const UserData({super.key});

  @override
  State<UserData> createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  var _name;
  var _phone;

  final nameCtrl = new TextEditingController();
  final phoneCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practica 01'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png'),
            const SizedBox(height: 10.0),
            TextField(
              controller: nameCtrl,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  hintText: 'Ingresa un nombre'),
            ),
            TextField(
              controller: phoneCtrl,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  hintText: 'Ingresa el número de celular'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black),
                onPressed: () {
                  _name = nameCtrl.text;
                  _phone = phoneCtrl.text;

                  setState(() {
                    showAlertDialog(
                        context,
                        'El usario $_name, tiene un teléfono $_phone',
                        'Mi APP :)',
                        'OK',
                        ':(');
                  });
                },
                child: const Text('Enviar'))
          ]),
    );
  }
}
