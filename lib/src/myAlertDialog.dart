import 'package:flutter/material.dart';

showAlertDialog(BuildContext context, String msg, String titulo, String botonOk,
    String botonCancel) {
  Widget btnCancelar =
      ElevatedButton(onPressed: () {}, child: Text(botonCancel));

  Widget btnOk = ElevatedButton(
    child: Text(botonOk),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text(titulo),
    content: Text(msg),
    actions: [
      btnCancelar,
      btnOk,
    ],
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
