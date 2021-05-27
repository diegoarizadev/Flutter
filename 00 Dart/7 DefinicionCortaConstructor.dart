void main() {
  //Todos los programas en dart necesitan el metodo void

//Clases.

  Heroe superman = new Heroe(nombre: 'Kal-El', poder: 'Fuerza');
  Heroe batman = Heroe(
      poder: 'Bruno',
      nombre:
          'Dinero'); //Para la nueva versión de Dart no es necesario la palabra new.
  final flash = Heroe(
      nombre: 'Barry',
      poder:
          'Correr a la velocidad de la luz'); // Constante flash de tipo Heroe

  final constantine = Heroe(poder: 'Brujeria');

  print(
      superman); //Sin sobre escribir el metodo toString la impresión en consola seria Instance of 'Heroe'
  //Imprimir los parametros
  print(superman.nombre);
  print(superman.poder);
  print(superman.toString()); //lo mismo que el print anterior.
  print(batman);
  print(flash);

  print(constantine);
}

class Heroe {
  String? nombre;
  String? poder;

  Heroe({this.nombre, this.poder}); //Argumentos con nombre posicionales

  //Sobre Escribir el metodo toString.
  String toString() => 'nombre : ${this.nombre} - poder : ${this.poder}';
}
