import 'package:flutter/material.dart'; //Importar paquete Flutter  para crear interfaz de usuario

void main() => runApp(MyApp()); //Punto de entrada de la aplicación Flutter

class MyApp extends StatelessWidget {
  //Widget es usado para crear Interfaz de usuario
  // This widget is the root of your application.
  @override // StatelessWidget es un widget que no mantiene ningún estado del widget
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Demo Application', //Título de la aplicación, no se despliega en pantalla
      theme: ThemeData(
        //Tema del Widget, clase ThemeData
        primarySwatch: Colors.blue, //Propiedad de la clase
      ),
      home: MyHomePage(title: 'Home Page'), //Si se despliega en pantalla, usa el Widget MyHomePage
    );
  }
}

class MyHomePage extends StatelessWidget {
  //Widget igual que MyApp, excepto que este widget regresa el Widget Scaffold
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Widget, se usa UI (Interfáz de usuario)
      appBar: AppBar(
        //Widget Propiedad-1 define cabecera de la App
        title: Text(this.title),
      ),
      body: Center(
          //Propiedad-2: Cuerpo o contenido de la App
          child: Image.asset("assets/smiley.png")),
    );
  }
}


