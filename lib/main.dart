
import 'package:flutter/material.dart';
import 'package:herplin_beta/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget i/**/s the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sample for material.Scaffold',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {

  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu().getMenu(this.context),
      //constroi menu
      appBar: AppBar(
        title: Text('AppName'),
      ),
      body: Center(
        child: new Column(
          children: [
            Padding(padding: EdgeInsets.all(10.0)),
            Expanded(child: Image.network('https://organicsnewsbrasil.com.br/wp-content/uploads/2015/10/Carrefour-c-logo.png',scale: 10,)),
            Expanded(child: Image.network('https://organicsnewsbrasil.com.br/wp-content/uploads/2015/10/Carrefour-c-logo.png',scale: 10,)),
            Expanded(child: Image.network('https://organicsnewsbrasil.com.br/wp-content/uploads/2015/10/Carrefour-c-logo.png',scale: 10,)),
          ]        
        ),
      ),
    );
  }
}
