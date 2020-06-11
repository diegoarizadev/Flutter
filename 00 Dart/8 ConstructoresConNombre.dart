import 'dart:convert';

void main() { //Todos los programas en dart necesitan el metodo void

  //Se crea el objecto con los argumentos posicionales.
  final flash = Heroe(nombre : 'Barry',poder : 'Correr a la velocidad de la luz'); // Constante flash de tipo Heroe

  print(flash);

  final rawJson = '{"nombre": "Superman", "poder":"Fuerza"}'; //Simulación de un Json "Respuesta de un servicio.."

  final parsedJson = json.decode(rawJson); //retorna un objeto de tipo map, dinamic.
   print(parsedJson);

  final superman = new Heroe.fromJson(parsedJson);

  print(superman);

}

class Heroe{

  String nombre;
  String poder;

  Heroe({this.nombre, this.poder}); //Argumentos con nombre posicionales

  Heroe.fromJson(Map parsedJson){//Constructor

    nombre = parsedJson['nombre'];
    nombre = parsedJson['poder'];

  }
  //Sobre Escribir el metodo toString.
  String toString() => 'nombre : ${this.nombre} - poder : ${this.poder}';

}
