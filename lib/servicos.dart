import 'package:flutter/material.dart';

class Servicos extends StatefulWidget {
  @override
  _State createState() => _State();
}

//Detalhes do anunciante

Widget textSection = Container(
 padding: EdgeInsets.all(15.0),
  child: Text(
    ' A barbearia do Zé está no bairro há maisde 20 anos'
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);

Widget fotoSection = Container(
  
child: ClipRRect(

            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Image.network(
                  'http://cdn.abcdoabc.com.br/Barbearia-Burning-House-1_f47e9c2a.jpg'),
            ),
          ),

);

detalhes() {

  return
    Scaffold(
      
      appBar: AppBar(
        title: Text("Barbearia do Zé"),
      ),
      body:  Column(

        
        children: <Widget>[
          fotoSection,
        textSection
        ],
      ));
}

class _State extends State<Servicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Serviços'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Barbearia"),
            subtitle: Text("Barberaria do Zé"),
            trailing: Text("tel.: 96477-1233", style: TextStyle(fontSize: 15)),
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://brandmark.io/logo-rank/random/beats.png")),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => detalhes()));
            },
          ),
        ],
      ),
    );
  }
}
