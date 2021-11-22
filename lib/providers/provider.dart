import 'package:flutter/foundation.dart';

//Creamos una clase "MyProvider" y le agregamos las capacidades de Change Notifier.
class MyProvider with ChangeNotifier {
/*
La propiedad WITH
Un mixin se refiere a  agregar las capacidades de otra clase o clases a nuestra propia clase,
sin heredar de esas clases. Los métodos de esas clases ahora pueden llamarse en su clase, y el código
dentro de esas clases se ejecutará. Dart no tiene herencia múltiple, pero el uso de mixins le permite
plegarse en otras clases para lograr la reutilización del código y evitar los problemas que podría causar
la herencia múltiple.
*/
  String _miTexto =
      "Texto inicial"; //Dentro de nuestro provider, creamos e inicializamos nuestra variable.
  String get miTexto =>
      _miTexto; //Creamos el método Get, para poder obtener el valor de mitexto

  //Ahora creamos el método set para poder actualizar el valor de _mitexto, este método recibe un valor newTexto de tipo String
  set miTexto(String newText) {
    _miTexto = newText;//actualizamos el valor
    notifyListeners(); //notificamos a los widgets que esten escuchando el stream.
  }
}
