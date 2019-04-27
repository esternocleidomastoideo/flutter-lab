import 'package:flutter/material.dart';

class Servicos extends StatefulWidget {
  @override
  _State createState() => _State();
}


 detalhes(){

return Scaffold(
  appBar: AppBar(
      title: Text("Barbearia do Zé"),
  ),
    body: Container(

      padding: EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.network('http://cdn.abcdoabc.com.br/Barbearia-Burning-House-1_f47e9c2a.jpg')
        ,
      ),
    ),
  
);


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
        children:  <Widget>[

          ListTile(

            title: Text("Barbearia"),
            subtitle: Text("Barberaria do Zé"),
            trailing: Text("tel.: 96477-1233", style:TextStyle(fontSize: 15)),
            leading: CircleAvatar(
                backgroundImage: NetworkImage("https://brandmark.io/logo-rank/random/beats.png")),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>detalhes()));
            },
          ),

        ],

      ),

    );
  }
}
