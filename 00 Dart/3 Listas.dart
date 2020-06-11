void main() { //Todos los programas en dart necesitan el metodo void

  //Los arreglos se conocen como listas en dart.

  List numeros = [1,2,3,4,5]; // en esta instancia el tipo de dato es dinamico para dart.

  print(numeros);

  numeros.add (6); //se agrega un nuevo elemento

  print(numeros);

  numeros.add ('Hola Diego'); //se agrega un nuevo elemento

  print(numeros); // Como la lista es dinamica, se realizará la impresión de los numeros y el string.

  List <int> numerosNew = [1,2,3,4,5]; //se restringe el tipo de datos que contendra la lista, esta lista puede crecer infinitamente.

  print(numerosNew);


  List masnumeros = List(10); //Se limita la cantidad de objetos de la lista.

  print(masnumeros);

  masnumeros[0] = 1; //Esta es la forma correcta de agregar en una posición un valor.

  print(masnumeros);


  //Ejemplos de listas

  /*
   * List <int> ListasString
   * List <String> ListasString
   * List <List <int>> ListaDeListas
   * */

}
