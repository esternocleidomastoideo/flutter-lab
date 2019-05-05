import 'package:flutter/material.dart';
import 'package:herplin_beta/servicos.dart';

class Menu {
  getMenu(context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Marcelo"),
            accountEmail: new Text("marceloblacksoul@gmail.com"),
            currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage(
                    "https://lh3.googleusercontent.com/a-/AAuE7mAykLFyyFJqWkgSXnVfZ-O7co694rzrJVLzrXFj=s96")),
          ),
          ListTile(
            title: Text("Transportes"),
            leading: Icon(Icons.directions_railway),
            onTap: () {},
          ),
          ListTile(
            title: Text("Comércios"),
            leading: Icon(Icons.thumb_up),
            onTap: () {
              Navigator.of(context).pushNamed("/comercios");
            },
          ),
          ListTile(
            title: Text("Serviços"),
            leading: Icon(Icons.build),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new Servicos()));
            },
          ),
        ],
      ),
    );
  } //metMenu
} //class
