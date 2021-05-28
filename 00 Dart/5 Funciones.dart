void main() {
  //Todos los programas en dart necesitan el metodo void

  saludar(); //El retorno de esta función es Dynamic y este tipo de objetos debe ser omitidos.

  print(presentar());

  print(presentarArgumentos(true,
      'Alejandro')); // la funcion presentarArgumentos esta recibiendo como parametro objectos de tipo Dynamic.

  print(presentarArgumentosValidos('Alejandro',
      presentar())); // La función recibe como parametros objetos de tipo String

  print(presentarArgumentosValidos2(
      nombre: 'Alejandro',
      texto: presentar())); // La función recibe parametros con nombre

  print(presentarArgumentosValidos3(
      nombre: 'Alejandro', texto: presentar())); //Función de tipo flecha.

  const dogs = [
    'Boston terriert',
    'labrador',
    'bulldog frances',
    '',
    'pastor Aleman'
  ];
  //Inicio de una funcion Anonima
  dogs.forEach((String nameDog) {
    if (nameDog.isEmpty) {
      print('No tiene raza el perro');
    } else {
      print('la raza del perro es : $nameDog');
    }
  });
  //Fin de una funcion Anonima
}

saludar() {
  print('Hola Alejandro');
}

String presentar() {
  return 'Mucho gusto Diego';
}

String presentarArgumentos(texto, nombre) {
  return '$texto $nombre';
}

String presentarArgumentosValidos(String texto, String nombre) {
  return '$texto $nombre';
}

//Este tipo de función recibe parametros con nombre
String presentarArgumentosValidos2({String? texto, String? nombre}) {
  return '$texto $nombre';
}

//Funcion flecha.
String presentarArgumentosValidos3({String? texto, required String? nombre}) =>
    '$texto $nombre'; //El return cambia por =>, Se agrega la frase required indicando que ese valor es requerido.
