void main() {
  //Todos los programas en dart necesitan el metodo void

//Clases.

  Heroe superman = new Heroe(nombreHero: 'Kal-El', poderHero: 'Fuerza');
  Heroe batman = Heroe(
      poderHero: 'Bruno',
      nombreHero:
          'Dinero'); //Para la nueva versión de Dart no es necesario la palabra new.
  final flash = Heroe(
      nombreHero: 'Barry',
      poderHero:
          'Correr a la velocidad de la luz'); // Constante flash de tipo Heroe

  final constantine = Heroe(poderHero: 'Brujeria');

  print(
      superman); //Sin sobre escribir el metodo toString la impresión en consola seria Instance of 'Heroe'
  print(superman.toString()); //lo mismo que el print anterior.
  print(batman);
  print(flash);
  print(constantine);
}

class Heroe {
  String? nombre;
  String? poder;

  //Constructores
  //  Heroe(String nombre, String poder){//Como todos los lenguajes!

  //  this.nombre = nombre;
  //  this.poder = poder;
  //  }

  //Argumentos con nombre o Main Argumets
  Heroe(
      {String nombreHero = '*No tiene Nombre*',
      String poderHero = '*No tiene Poder*'}) {
    this.nombre = nombreHero;
    this.poder = poderHero;
  }

  //Sobre Escribir el metodo toString.
  String toString() {
    return 'Nombre del heroe : ${this.nombre} y su poder es : ${this.poder}';
  }
}
