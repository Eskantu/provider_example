// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider_example/screens/second_page.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/provider.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
    Lo que hacemos aquí, es crear una instancia de MyProvider (el que creamos en 
    /providers/provider.dart a través de la cual podremos interactuar 
    dentro de nuestros widgets.
    */
    final provider = Provider.of<MyProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Primer pagina'),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /*a traves de myProvider, 
            estamos accediendo al método getter "mitexto" el cual devuelve un string 
            que inicialmente dice "Texto Inicial"*/
            Text(provider.miTexto),
            MaterialButton(
              onPressed: () {
                /*Lo que hacemos aquí, es acceder al metodo setter "mitexto" y 
                    pasarle el string que solicita, esto va a actualizar el valor en el 
                    provider y hacer que todos los widgets que esten escuchando, se reconstruyan.*/
                provider.miTexto = "Este texto es actualizado";
              },
              child: Text('Cambiar texto'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ));
              },
              child: Text('Ir a pagina 2'),
            ),
          ],
        ),
      )),
    );
  }
}
