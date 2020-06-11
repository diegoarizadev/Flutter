void main() { //Todos los programas en dart necesitan el metodo void

saludar(); //El retorno de esta función es Dynamic y este tipo de objetos debe ser omitidos.

print(presentar());

print(presentarArgumentos(true,'Alejandro')); // la funcion presentarArgumentos esta recibiendo como parametro objectos de tipo Dynamic.

print(presentarArgumentosValidos('Alejandro', presentar())); // La función recibe como parametros objetos de tipo String

print(presentarArgumentosValidos2( nombre : 'Alejandro', texto : presentar())); // La función recibe parametros con nombre

print(presentarArgumentosValidos3( nombre : 'Alejandro', texto : presentar())); //Función de tipo flecha.
}

saludar(){
  print('Hola Alejandro');
}

String presentar(){
  return 'Mucho gusto Diego';
}

String presentarArgumentos(texto, nombre){
  return '$texto $nombre';
}

String presentarArgumentosValidos(String texto, String nombre){
  return '$texto $nombre';
}

//Este tipo de función recibe parametros con nombre
String presentarArgumentosValidos2({String texto, String nombre}){
  return '$texto $nombre';
}


//Funcion flecha.
String presentarArgumentosValidos3({String texto, String nombre}) => '$texto $nombre'; //El return cambia por =>
