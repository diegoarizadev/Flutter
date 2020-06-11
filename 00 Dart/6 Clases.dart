void main() { //Todos los programas en dart necesitan el metodo void

//Clases.

  Heroe superman = new Heroe(nombre : 'Kal-El',poder : 'Fuerza');
  Heroe batman = Heroe(poder : 'Bruno',nombre :'Dinero'); //Para la nueva versión de Dart no es necesario la palabra new.
  final flash = Heroe(nombre : 'Barry',poder : 'Correr a la velocidad de la luz'); // Constante flash de tipo Heroe

  final constantine = Heroe(poder : 'Brujeria');

  print(superman); //Sin sobre escribir el metodo toString la impresión en consola seria Instance of 'Heroe'
  print(superman.toString()); //lo mismo que el print anterior.
  print(batman);
  print(flash);

  //Imprimir los parametros
  print(superman.nombre+' '+superman.poder);
  print(batman.nombre+' '+batman.poder);
  print(flash.nombre+' '+flash.poder);

  print(constantine);

}

class Heroe{

  String nombre;
  String poder;

  //Constructores
  //  Heroe(String nombre, String poder){//Como todos los lenguajes!

  //  this.nombre = nombre;
  //  this.poder = poder;
  //  }

  //Argumentos con nombre o Main Argumets
  Heroe({String nombre =  '*No tiene Nombre*', String poder}){

  this.nombre = nombre;
  this.poder = poder;
  }

  //Sobre Escribir el metodo toString.
  String toString(){
    return 'nombre : ${this.nombre} - poder : ${this.poder}';
  }
}
