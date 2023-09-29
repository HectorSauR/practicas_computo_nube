import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-psd/logo-mockup-panel-wall_511564-1493.jpg?size=626&ext=jpg"),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Héctor Sauceda",
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Alumno',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.person, color: Colors.black),
          title: Text('Perfil'),
        ),
        ListTile(
          leading: Icon(Icons.inbox, color: Colors.black),
          title: Text('Mensajería'),
        ),
        ListTile(
          leading: Icon(Icons.assessment, color: Colors.black),
          title: Text('Dashboard'),
        ),
        ListTile(
          leading: Icon(Icons.settings, color: Colors.black),
          title: Text('Configuración'),
        ),
      ],
    );
  }
}
